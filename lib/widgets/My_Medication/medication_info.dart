import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/DiagnosisDetailsModel.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/controller/my_medication_controller.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class MedicationInfo extends StatefulWidget {
  MedicationInfo({Key? key, required this.controller}) : super(key: key);
  HomeController controller;

  @override
  State<MedicationInfo> createState() => _MedicationInfoState();
}

class _MedicationInfoState extends State<MedicationInfo> {
  MedicationController medicationController = Get.put(MedicationController());

  @override
  Widget build(BuildContext context) {
    List _fb = [
      {
        "name": "Diabetes Type II",
        "si": "Dr. Robert James",
        "time": "Mar 30, 2023"
      },
      {"name": "Fibrosis Uterus", "si": "Dr. Wilson", "time": "Mar 27, 2023"},
      {"name": "Diarrhea", "si": "Dr. Marvin McKinney", "time": "Mar 24, 2023"},
      {"name": "Anaemia", "si": "Dr. Brooklyn Simmons", "time": "Mar 20, 2023"},
      {"name": "Fibrosis Uterus", "si": "Dr. Wilson", "time": "Mar 27, 2023"},
    ];
    return Column(
      children: [
        SizedBox(
          height: 35.h,
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  "${widget.controller.diagnosisDetailsList.length} medications",
                  style: size14Bold(),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(25),
                          topStart: Radius.circular(25),
                        ),
                      ),
                      builder: (context) => Container(
                        padding: const EdgeInsetsDirectional.only(
                          start: 20,
                          end: 20,
                          bottom: 30,
                          top: 8,
                        ),
                        child: Wrap(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Divider(
                                    thickness: 4, indent: 100, endIndent: 100),
                                Padding(
                                  padding: EdgeInsets.all(10.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      Text(
                                        "Filter By",
                                        style: size14Bold(),
                                      ),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      Wrap(
                                        spacing: 15.sp,
                                        children: [
                                          Obx(
                                            () => InkWell(
                                              onTap: () {
                                                medicationController
                                                    .onSelectA();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color: medicationController
                                                          .isSelectedA.value
                                                      ? secondaryColor
                                                      : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border: medicationController
                                                          .isSelectedA.value
                                                      ? null
                                                      : Border.all(
                                                          color: borderColor),
                                                ),
                                                child: Text(
                                                  "Diabetes Mellitus - Type 2",
                                                  style: size14Bold(
                                                      textColor:
                                                          medicationController
                                                                  .isSelectedA
                                                                  .value
                                                              ? whiteColor
                                                              : secondaryTextColor),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Obx(
                                            () => InkWell(
                                              onTap: () {
                                                medicationController
                                                    .onSelectB();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color: medicationController
                                                          .isSelectedB.value
                                                      ? secondaryColor
                                                      : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border: medicationController
                                                          .isSelectedB.value
                                                      ? null
                                                      : Border.all(
                                                          color: borderColor),
                                                ),
                                                child: Text(
                                                  "Coronary Artery Disease",
                                                  style: size14Bold(
                                                      textColor:
                                                          medicationController
                                                                  .isSelectedB
                                                                  .value
                                                              ? whiteColor
                                                              : secondaryTextColor),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Obx(
                                            () => InkWell(
                                              onTap: () {
                                                medicationController
                                                    .onSelectC();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color: medicationController
                                                          .isSelectedC.value
                                                      ? secondaryColor
                                                      : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border: medicationController
                                                          .isSelectedC.value
                                                      ? null
                                                      : Border.all(
                                                          color: borderColor),
                                                ),
                                                child: Text(
                                                  "Uterus Fibroids",
                                                  style: size14Bold(
                                                      textColor:
                                                          medicationController
                                                                  .isSelectedC
                                                                  .value
                                                              ? whiteColor
                                                              : secondaryTextColor),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      // Wrap(
                                      //   spacing: 15.sp,
                                      //   children: [
                                      //     Obx(
                                      //       () => InkWell(
                                      //         onTap: () {
                                      //           medicationController
                                      //               .onSelectD();
                                      //         },
                                      //         child: Container(
                                      //           padding: EdgeInsets.all(5.sp),
                                      //           decoration: BoxDecoration(
                                      //             color: medicationController
                                      //                     .isSelectedD.value
                                      //                 ? secondaryColor
                                      //                 : whiteColor,
                                      //             borderRadius:
                                      //                 BorderRadius.circular(
                                      //                     10.sp),
                                      //             border: medicationController
                                      //                     .isSelectedD.value
                                      //                 ? null
                                      //                 : Border.all(
                                      //                     color: borderColor),
                                      //           ),
                                      //           child: Text(
                                      //             "Renal diseases",
                                      //             style: size14Bold(
                                      //                 textColor:
                                      //                     medicationController
                                      //                             .isSelectedD
                                      //                             .value
                                      //                         ? whiteColor
                                      //                         : secondaryTextColor),
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Obx(
                                      //       () => InkWell(
                                      //         onTap: () {
                                      //           medicationController
                                      //               .onSelectE();
                                      //         },
                                      //         child: Container(
                                      //           padding: EdgeInsets.all(5.sp),
                                      //           decoration: BoxDecoration(
                                      //             color: medicationController
                                      //                     .isSelectedE.value
                                      //                 ? secondaryColor
                                      //                 : whiteColor,
                                      //             borderRadius:
                                      //                 BorderRadius.circular(
                                      //                     10.sp),
                                      //             border: medicationController
                                      //                     .isSelectedE.value
                                      //                 ? null
                                      //                 : Border.all(
                                      //                     color: borderColor),
                                      //           ),
                                      //           child: Text(
                                      //             "Pneumonia",
                                      //             style: size14Bold(
                                      //                 textColor:
                                      //                     medicationController
                                      //                             .isSelectedE
                                      //                             .value
                                      //                         ? whiteColor
                                      //                         : secondaryTextColor),
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      SizedBox(
                                        height: 50.h,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.back();
                                          Get.toNamed(
                                              RoutesConstants
                                                  .medicationSearchScreen,
                                              arguments: [
                                                medicationController
                                                    .selectedFilter.value,
                                                widget.controller.diagnosisDetailsList
                                              ]);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.w, vertical: 15.h),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            color: primaryColor,
                                          ),
                                          child: Center(
                                            child: Text(
                                              'APPLY FILTERS',
                                              style: size12Bold(
                                                  textColor: whiteColor),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Filter",
                    style: size14Bold(textColor: secondaryColor),
                  ),
                ),
//
              ),
            ],
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Obx(
          () => ListView.builder(
              itemCount: widget.controller.diagnosisDetailsList.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutesConstants.medicationDetailsScreen,
                        arguments: [
                          widget.controller.diagnosisDetailsList[index]
                        ]);
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            // side: const BorderSide(
                            //   color: Colors.blue,
                            // ),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          // height: 115.h,

                          // gradient: const LinearGradient(
                          //     begin: Alignment.topLeft,
                          //     end: Alignment.bottomRight,
                          //    // colors: <Color>[primaryColor, secondaryColor])),

                          child: Padding(
                            padding: EdgeInsets.all(17.0.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "${widget.controller.diagnosisDetailsList[index].title}",
                                        style: size14Bold(
                                            textColor: secondaryColor)),
                                    const Divider(
                                      thickness: 1,
                                      color: dividerColor,
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                        "${widget.controller.diagnosisDetailsList[index].doctor2}",
                                        style: size12Medium(
                                            textColor: secondaryTextColor)),
                                    Text(
                                        "${widget.controller.diagnosisDetailsList[index].lasTreated}",
                                        style: size12Medium(
                                            textColor: secondaryTextColor))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        // SizedBox(
                        //   height: 5.h,
                        // ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
