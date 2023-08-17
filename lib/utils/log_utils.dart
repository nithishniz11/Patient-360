import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/text_style.dart';

class LogUtils {
  static showLogs({String? tag, String? message}) {
    if (!kReleaseMode) {
      log(message ?? '', name: tag ?? '');
    }
  }

  static showPrint(String message) {
    if (!kReleaseMode && kDebugMode) {
      debugPrint(message);
    }
  }

  static showErrorLogs({String? tag, String? message, String? error}) {
    if (!kReleaseMode) {
      log(message ?? '', name: tag ?? '', error: error);
    }
  }

  static showSnackBar({String? tag, String? message, String? error}){
    return Get.snackbar(
      "$tag",
      "$message",
      titleText: Text(
        "$tag",
        style: size12Bold(),
      ),
      colorText: primaryTextColor,
      backgroundColor: whiteColor,
      icon: const Icon(Icons.add_alert),
    );
  }
}
