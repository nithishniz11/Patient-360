import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_360/controller/login_controller.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/preferences/preference_manager.dart';
import 'package:patient_360/utils/preferences/preferences_key.dart';

import '../../utils/assets.dart';
import '../../utils/routes/routes_strings.dart';
import '../../utils/text_style.dart';

class LoginPageTextField extends StatelessWidget {
  LoginPageTextField({Key? key, required this.controller}) : super(key: key);

  LoginController controller;

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();

  // final GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                width: 1, color: borderColor, style: BorderStyle.solid)),
        child: TextFormField(
          // key: _formKey,
          controller: _conUserId,
          keyboardType: TextInputType.emailAddress,
          style: size14Regular(),
          decoration: InputDecoration(
              hintStyle: size14Regular(textColor: secondaryHeadingTextColor),
              hintText: 'Enter Medical Record Number or Patient ID',
              contentPadding: EdgeInsets.all(15.sp),
              border: InputBorder.none),
        ),
      ),
      SizedBox(height: 15.h),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                width: 1, color: borderColor, style: BorderStyle.solid)),
        child: Obx(()=>TextFormField(
          // key: _formKey,
          controller: _conPassword,
          obscureText: controller.passwordVisible.value,
          style: size14Regular(),
          decoration: InputDecoration(
              hintText: 'Password',
              suffixIcon: IconButton(
                icon: controller.passwordVisible.value
                    ? SvgPicture.asset(AppIcons.passwordEye)
                    : SvgPicture.asset(AppIcons.passwordEyeOpen),
                color: Theme.of(context).primaryColorDark,
                onPressed: () {
                  controller.passwordVisible.value =
                      !controller.passwordVisible.value;
                },
              ),
              hintStyle: size14Regular(textColor: secondaryHeadingTextColor),
              contentPadding: EdgeInsets.all(15.sp),
              border: InputBorder.none),
        ),
      ),),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Forget Password?",
                style: size12Regular(textColor: secondaryColor),
              )),
        ],
      ),
      GestureDetector(
        onTap: login,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: primaryColor,
          ),
          child: Center(
            child: Text(
              'LOGIN',
              style: size12Bold(textColor: whiteColor),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 15.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              // Get.toNamed(RoutesConstants.registerPage);
            },
            child: Image.asset(
              "assets/images/google.jpg",
              height: 33.h,
              width: 33.w,
            ),
          ),
          SizedBox(
            width: 35.w,
          ),
          Image.asset(
            AppImages.fb,
            height: 30.h,
            width: 37.w,
          ),
        ],
      ),
      SizedBox(
        height: 15.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "First time logging in?",
            style: size12Regular(textColor: Colors.grey),
          ),
          TextButton(
              onPressed: () {
                Get.toNamed(RoutesConstants.registerPage);
              },
              child: Text(
                "Register here",
                style: size12Medium(textColor: secondaryColor),
              ))
        ],
      )
    ]);
  }

  login() async {
    String uid = _conUserId.text;
    String passwd = _conPassword.text;

    if (uid.isEmpty) {
      LogUtils.showErrorLogs(tag: "Error", message: "Please Enter user ID");

      // alertDialog(context, "Please Enter User ID");
    } /*else if (passwd.isEmpty) {
      LogUtils.showErrorLogs(tag: "Error", message: "Please Enter password");
      // alertDialog(context, "Please Enter Password");
    } */else {
      await controller.dbHelper.getLoginUser(uid).then((userData) {
        if (userData != null) {
          // setSP(userData).whenComplete(
          //   () {
          AppPreference().setBool(PreferencesKey.isLogin, true);
          Get.offAllNamed(RoutesConstants.homeScreen);
          AppPreference().setString(PreferencesKey.userId, uid);
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(builder: (_) => HomeForm()),
          //     (Route<dynamic> route) => false);
          // },
          // );
        } else {
          LogUtils.showErrorLogs(tag: "Error", message: "User Not Found");
        }
      }).catchError((error) {
        if (kDebugMode) {
          print(error);
        }
        LogUtils.showErrorLogs(tag: "Error", message: "Login Failed");
        // alertDialog(context, "Error: Login Fail");
      });
    }
  }
}
