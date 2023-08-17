import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/preferences/preference_manager.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class LogButton extends StatelessWidget {
  const LogButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.sp),
      child: GestureDetector(
        onTap: (){
          AppPreference().removeUserData();
          AppPreference().clearSharedPreferences();
          Get.offAllNamed(RoutesConstants.loginScreen);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.logOutIcon,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  ("Logout"),
                  style: size14Bold(textColor: whiteColor),
                ),
              ],
            )),
      ),
    );
    // return   GestureDetector(
    //   onTap: () {},
    //   child: Container(
    //     height: 30,
    //       width: 10,
    //       //padding: EdgeInsets.symmetric(
    //          // horizontal: 15.w, vertical: 15.h),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10.r),
    //         color: primaryColor,
    //       ),
    //       child: Row(
    //         children: [
    //           IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
    //           Text("Logout"),
    //
    //         ],
    //       ),
    //
    //   ),
    // );
  }
}
