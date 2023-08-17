import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:patient_360/DatabaseHandler/DbHelper.dart';
import 'package:patient_360/Model/UserDetailsModel.dart';
import 'package:patient_360/Model/UserModel.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';

class RegisterController extends GetxController {
  RxBool passwordVisible = true.obs;
  Rx<UserDetailsModel> userInfo = UserDetailsModel().obs;
  RxList<UserDetailsModel> userInfoList = <UserDetailsModel>[].obs;

  var dbHelper;

  // Map<String, dynamic> deviceData = <String, dynamic>{};

  Future<UserDetailsModel?> verifyUserDetails(String mRN) async {
    final String response = await rootBundle.loadString(AppFiles.userDetails);
    List<UserDetailsModel> list = UserDetailsModel().userListFromJson(response);
    userInfo.value = list.firstWhere(
        (element) => element.mRN!.toLowerCase() == mRN.toLowerCase(),
        orElse: () => UserDetailsModel());
    if (userInfo.value.mRN != null) {
      await _checkVerification(userInfo.value);
      LogUtils.showLogs(tag: "${userInfo.value.mRN}");
      return userInfo.value;
    } else {
      Get.toNamed(RoutesConstants.registrationApprovalPendingScreen,
          arguments: [mRN]);
      LogUtils.showErrorLogs(tag: "ERROR", message: "NO DATA FOUND");
      return null;
    }
  }

  Future requestVerification(UserDetailsModel user) async {
    String? uid = user.mRN;
    String? uname = user.userName;
    String? email = user.contactInfo!.email;
    String? passwd = "${user.mRN}@Patient360";
    UserModel uModel =
        UserModel(userId: uid, userName: uname, email: email, password: passwd);
    await dbHelper.saveUserData(uModel).then((userData) {
      LogUtils.showSnackBar(
          tag: "Success", message: "Data Verified Successfully");
      LogUtils.showLogs(tag: "$uid", message: passwd);
      Get.toNamed(RoutesConstants.loginScreen);
    }).catchError((error) {
      if (kDebugMode) {
        print(error);
      }
      // alertDialog(context, "Error: Data Save Fail");
    });
    // await dbHelper.saveUserData(uModel).then((userData) {
    //   LogUtils.showSnackBar(tag: "Success", message: "Data Found!");
  }

  Future _checkVerification(UserDetailsModel arg) async {
    await dbHelper.getUserDetails(arg.mRN).then((userData) {
      if (userData != null) {
        // LogUtils.showSnackBar(
        //     tag: "Please Login Here", message: "User Already Registered!");
        Get.toNamed(RoutesConstants.registrationApprovalPendingScreen, arguments: [arg.mRN]);
      } else {
        Get.toNamed(RoutesConstants.loginRegistrationDetail, arguments: [arg]);
      }
    });
  }

  void getUserDetails(String userId) async {}

  @override
  void onInit() async {
    dbHelper = DbHelper();
    super.onInit();
  }
}
