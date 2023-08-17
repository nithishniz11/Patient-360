import 'dart:core';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:patient_360/DatabaseHandler/DbHelper.dart';
import 'package:patient_360/Model/DiagnosisDetailsModel.dart';
import 'package:patient_360/Model/UserDetailsModel.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/preferences/preference_manager.dart';
import 'package:patient_360/utils/preferences/preferences_key.dart';

class HomeController extends GetxController {
  var dbHelper;
  Rx<UserDetailsModel> userInfo = UserDetailsModel().obs;
  RxList<DiagnosisDetailsModel> diagnosisDetailsList =
      <DiagnosisDetailsModel>[].obs;
  RxList<DiagnosisDetailsModel> recentDiagnosisDetailsList =
      <DiagnosisDetailsModel>[].obs;
  RxList<DiagnosisDetailsModel> oldDiagnosisDetailsList =
      <DiagnosisDetailsModel>[].obs;
  RxString greetingMes = 'Good Evening'.obs;

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      greetingMes.value = "Good Morning";
      return greetingMes.value;
    }
    if (hour < 17) {
      greetingMes.value = "Good Afternoon";
      return greetingMes.value;
    }
    return greetingMes.value;
  }

  Future<List<DiagnosisDetailsModel>?> getDiagnosisData(String userId) async {
    final String response =
        await rootBundle.loadString(AppFiles.diagnosisDetails);
    List<DiagnosisDetailsModel> list =
        DiagnosisDetailsModel().diagnosisDetailsListFromJson(response);
    diagnosisDetailsList.value = list
        .where(
            (element) => element.userid!.toLowerCase() == userId.toLowerCase())
        .toList();
    if(diagnosisDetailsList.isNotEmpty){
      recentDiagnosisDetailsList.value = diagnosisDetailsList.where((p0) => p0.diagnosisTier.toString() == "recent").toList();
      oldDiagnosisDetailsList.value = diagnosisDetailsList.where((p0) => p0.diagnosisTier.toString() == "old").toList();
      return diagnosisDetailsList;
    }
    return null;
  }

  Future<String> getUserId() async {
    return AppPreference().getString(PreferencesKey.userId);
  }

  Future<UserDetailsModel?> getUserDetails(String mRN) async {
    final String response = await rootBundle.loadString(AppFiles.userDetails);
    List<UserDetailsModel> list = UserDetailsModel().userListFromJson(response);
    userInfo.value = list.firstWhere(
        (element) => element.mRN!.toLowerCase() == mRN.toLowerCase(),
        orElse: () => UserDetailsModel());
    return userInfo.value;
  }

  @override
  void onInit() async {
    greeting();
    await getUserDetails(await getUserId());
    await getDiagnosisData(await getUserId());
    dbHelper = DbHelper();
    super.onInit();
  }
}
