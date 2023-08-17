import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:patient_360/utils/log_utils.dart';

class Constants {
 static Future<Map<String, dynamic>> initPlatformState() async {
    try {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        if (kDebugMode) {
          print('Running on ${androidInfo.id}');
        }
        return {"device_type": "android", "device_id": androidInfo.id};
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        if (kDebugMode) {
          print('Running on ${iosInfo.identifierForVendor}');
        }
        return {
          "device_type": "android",
          "device_id": iosInfo.identifierForVendor,
        };
      }
      return {};
    } catch (e) {
      LogUtils.showLogs(message: e.toString(), tag: "Error");
      return {};
    }
  }
}