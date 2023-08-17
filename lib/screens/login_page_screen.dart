import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:patient_360/utils/colors.dart';
import '../widgets/login_page/login_page_image.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 100.h,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.r),
                    topLeft: Radius.circular(20.r),
                  ),
                  color: primaryColor),
              child: const SizedBox(),
              // LoginPageTextField(controller: loginController,),
            ),
          ),
          Positioned(
            top: 135.h,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.r),
                    topLeft: Radius.circular(20.r),
                  ),
                  color: whiteColor),
              child: LoginPageDetails(
                controller: loginController,
              ),
              //
            ),
          ),
        ],
      ),
    );
  }
}
