import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:get/get.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

class RegistrationApprovalPendingScreen extends StatelessWidget {
  RegistrationApprovalPendingScreen({Key? key}) : super(key: key);
  dynamic userID = Get.arguments;

  @override
  Widget build(BuildContext context) {
    String mRN = userID[0];
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: 'Registration',
            showBackButton: true,
            showHomeIcon: false,
          )),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 350.w,
              height: 310.h,
              child: Image.asset(AppImages.loginImage),
            ),
            Text(
              "Pending approval request",
              style: size18Bold(textColor: secondaryTextColor),
            ),
            SizedBox(
              width: 312.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your medical record number (MRN) $mRN is waiting for approval from your medical representatives. Thank you for your patience.",
                    textAlign: TextAlign.center,
                    style: size16Medium(textColor: secondaryTextColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Having an account already? ",
                  style: size14Medium(textColor: secondaryTextColor),
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAllNamed(RoutesConstants.loginScreen);
                  },
                  child: Text(
                    "Login",
                    style: size14Medium(textColor: secondaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
