import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';
import '../../utils/colors.dart';
import '../../utils/strings.dart';
import '../../utils/text_style.dart';

class RecentDiagnosis extends StatelessWidget {
  RecentDiagnosis({Key? key, required this.controller}) : super(key: key);
  HomeController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: [
        Text(Strings.recentDiagnosis, style: size14Bold()),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
            itemCount: controller.recentDiagnosisDetailsList.length,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesConstants.myDiagnosisPageDetailsScreen,
                      arguments: [
                        controller.recentDiagnosisDetailsList[index],
                        Strings.recentDiagnosis
                      ]);
                },
                child: Container(
                  // height: 120.h,
                  padding: EdgeInsets.all(20.0.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[primaryColor, secondaryColor])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "${controller.recentDiagnosisDetailsList[index].title}",
                          style: size14Bold(textColor: whiteColor)),
                      const Divider(
                        thickness: 1,
                        color: whiteColor,
                      ),
                      Text(Strings.lastTreated,
                          style: size12Regular(textColor: whiteColor)),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                          "${controller.recentDiagnosisDetailsList[index].lasTreated}",
                          style: size14Medium(textColor: whiteColor))
                    ],
                  ),
                ),
              );
            }),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}
