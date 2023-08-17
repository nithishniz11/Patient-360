import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/utils/strings.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import '../widgets/my_diagnosis_widgets/old_diagnosis.dart';
import '../widgets/my_diagnosis_widgets/recent_diagnosis.dart';

class MyDiagnosisScreen extends StatelessWidget {
  MyDiagnosisScreen({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: Strings.myDiagnosis,
            showBackButton: true,
            showHomeIcon: true,
          )),
      body: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.h),
        // padding:
        //     EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h, top: 20.h),
        children: [
          RecentDiagnosis(
            controller: homeController,
          ),
          SizedBox(
            height: 15.h,
          ),
          OldDiagnosis(controller: homeController,),
        ],
      ),
    );
  }
}
