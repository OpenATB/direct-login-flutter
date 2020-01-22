import 'package:hack/model/fetch_process.dart';
import 'package:hack/ui/page/main/main_page.dart';
import 'package:hack/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'common_dialogs.dart';

apiSubscription(Stream<FetchProcess> apiResult, BuildContext context) {
  apiResult.listen((FetchProcess p) {
    if (p.loading) {
      showProgress(context);
    } else {
      hideProgress(context);
      if (p.response?.success == false) {
        fetchApiResult(context, p.response);
      } else if (p.response?.success == true) {
        switch (p.type) {
          case ApiType.performLogin:
            showSuccess(context, Constants.success, FontAwesomeIcons.check);
            Future.delayed(const Duration(seconds: 1), () {
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context) =>  MainPage()), (Route<dynamic> route) => false);
            });
            break;
          case ApiType.performCheckBalance:
            break;
          case ApiType.perfromGetAccountList:
            break;
        }
      }
    }
  });
}
