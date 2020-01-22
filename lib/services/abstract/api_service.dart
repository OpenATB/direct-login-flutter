import 'package:hack/model/response/balance_response.dart';
import 'package:hack/model/response/login_response.dart';
import 'package:hack/model/user_model.dart';
import 'package:hack/services/network_service_response.dart';
import 'package:hack/utils/constants.dart';

import '../restclient.dart';

class ApiService {

  static Future<NetworkServiceResponse<LoginResponse>> directLogin(
      String username, String password) async {
    Map<String, String> headers = {
      "Content-Type": 'application/json',
      "Authorization": 'DirectLogin username=$username,password=$password,consumer_key=${Constants.CONSUMER_KEY}',
    };
    var result = await RestClient.getInstance().postAsyncWithCustomHeader<LoginResponse>("my/logins/direct", null, headers);

    if (result.mappedResult != null) {
      var res = LoginResponse.fromJson(result.mappedResult);
      UserModel.getInstance().setToken(res.token);
      UserModel.getInstance().setUsername(username);

      return new NetworkServiceResponse(
        content: res,
        success: result.networkServiceResponse.success
      );
    }

    return new NetworkServiceResponse(
      success: result.networkServiceResponse.success,
      message: result.networkServiceResponse.message
    );
  }

  static Future<NetworkServiceResponse<BalanceResponse>> getBalance() async {
    var result = await RestClient.getInstance().getAsync('obp/v4.0.0/banks/${UserModel.getInstance().getAccountModel()?.bankId}/balances');

    if (result.mappedResult != null) {
      var res = BalanceResponse.fromJson(result.mappedResult);

      return new NetworkServiceResponse(
        content: res,
        success: result.networkServiceResponse.success
      );
    }

    return new NetworkServiceResponse(
        success: result.networkServiceResponse.success,
        message: result.networkServiceResponse.message
    );
  }

  static Future<NetworkServiceResponse<BalanceResponse>> getAllAccount() async {
    var result = await RestClient.getInstance().getAsync('obp/v4.0.0/my/accounts');

    if (result.mappedResult != null) {
      var res = BalanceResponse.fromJson(result.mappedResult);

      return new NetworkServiceResponse(
        content: res,
        success: result.networkServiceResponse.success
      );
    }

    return new NetworkServiceResponse(
      success: result.networkServiceResponse.success,
      message: result.networkServiceResponse.message
    );
  }

}
