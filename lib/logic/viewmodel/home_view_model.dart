import 'package:hack/services/abstract/api_service.dart';
import 'package:hack/services/network_service_response.dart';

class HomeViewModel {
  NetworkServiceResponse apiBalanceResult;

  Future<Null> getBalance() async {
    NetworkServiceResponse result = await ApiService.getBalance();
    this.apiBalanceResult = result;
  }
}
