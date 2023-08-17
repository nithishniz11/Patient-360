import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'package:patient_360/utils/assets.dart';

class MyGoalsScreen extends StatelessWidget {
  const MyGoalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            showHomeIcon: true,
            showBackButton: true,
            screenName: "My Goals",
          )),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.sp,20.sp,20.sp,10.sp),
            child: SizedBox(
              width: 350.w,
              height: 267.h,
              child: Image.asset(AppImages.bloodSugarLevel,),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.sp,20.sp,20.sp,10.sp),
            child: SizedBox(
              width: 350.w,
              height: 339.5.h,
              child: Image.asset(AppImages.bloodPressureLevel,),
            ),
          ),

        ],
      ),
    );
  }
}
