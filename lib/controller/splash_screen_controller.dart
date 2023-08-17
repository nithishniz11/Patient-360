import 'dart:async';

import 'package:get/get.dart';
import 'package:patient_360/utils/constant.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/preferences/preference_manager.dart';
import 'package:patient_360/utils/preferences/preferences_key.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';

class SplashController extends GetxController {
  Map<String, dynamic> deviceData = <String, dynamic>{};

  @override
  void onInit() async {
    deviceData = await Constants.initPlatformState();
    versionCheckerApi();
    super.onInit();
  }

  Future<void> versionCheckerApi() async {
    try {
      // APIRequestInfo apiRequestInfo = APIRequestInfo(
      //     url: APISetup.versionChecker,
      //     requestType: HTTPRequestType.POST,
      //     headers: ApiHelper.getHeaders(true),
      //     parameter: {
      //       'type': deviceData["device_type"],
      //       'version': '1',
      //     });

      // String response = await ApiCallPlatInstance.apiInstance
      //     .callService(requestInfo: apiRequestInfo);

      // LogUtils.showLogs(message: response.toString(), tag: "response");
      bool isLogIn =
          AppPreference().getBool(PreferencesKey.isLogin, defValue: false);
      // bool isWelcome =
      //     AppPreference().getBool(PreferencesKey.isWelcome, defValue: false);
      Timer(
        const Duration(seconds: 3),
        () => isLogIn
                ? Get.offAllNamed(
                    RoutesConstants.homeScreen) //bottomNavigator
                : Get.offAllNamed(RoutesConstants.loginScreen)
      );
    } catch (e, stackStrace) {
      LogUtils.showLogs(message: e.toString(), tag: "Error");
      LogUtils.showLogs(message: "$stackStrace", tag: "StackStrace");
    }
  }
}
