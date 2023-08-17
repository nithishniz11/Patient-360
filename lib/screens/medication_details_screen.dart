
import 'package:flutter/material.dart';
import 'package:patient_360/Model/DiagnosisDetailsModel.dart';
import 'package:patient_360/utils/text_style.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MedicationDetailsScreen extends StatelessWidget {
  MedicationDetailsScreen({Key? key}) : super(key: key);
  dynamic arg = Get.arguments;

  @override
  Widget build(BuildContext context) {
    DiagnosisDetailsModel diagnosisDetailsModel = arg[0];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: const CommonAppBar(
          screenName: "Medication",
          showBackButton: true,
          showHomeIcon: true,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${diagnosisDetailsModel.title}",
              style: size18Bold(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "${diagnosisDetailsModel.doctor2} - ${diagnosisDetailsModel.lasTreated}",
              style: size14Medium(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[primaryColor, secondaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              height: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
                itemCount: diagnosisDetailsModel.medication!.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20.sp),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.sp, left: 10.sp, bottom: 10.sp, right: 10.sp),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppImages.tablet),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Tab - ${diagnosisDetailsModel.medication![index].tablet}",
                                  style:
                                  size18Bold(textColor: secondaryColor),
                                ),
                                Text(
                                  "${diagnosisDetailsModel.medication![index].common}",
                                  style:
                                  size14Medium(textColor: secondaryTextColor),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(vertical: 5.sp),
                                  child: Container(
                                    width: 230.w,
                                    height: 1.h,
                                    color: dividerColor,
                                  ),
                                ),
                                Text(
                                  "Usage : ${diagnosisDetailsModel.medication![index].usage}",
                                  style: size14Medium(
                                      textColor: secondaryTextColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
