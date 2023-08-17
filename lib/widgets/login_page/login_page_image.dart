import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/controller/login_controller.dart';
import 'package:patient_360/widgets/login_page/login_page_textfield.dart';

import '../../utils/assets.dart';

class LoginPageDetails extends StatelessWidget {
  LoginPageDetails({Key? key, required this.controller}) : super(key: key);
  LoginController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImages.appNameLogo),
          SizedBox(
            height: 20.h,
          ),
          LoginPageTextField(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
