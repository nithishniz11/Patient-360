import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/doctor_details_model.dart';
import 'package:patient_360/controller/primary_care_provider_controller.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class PrimaryCareProviderRecentConsultants extends StatelessWidget {
  PrimaryCareProviderRecentConsultants({Key? key, required this.doctorList})
      : super(key: key);
  List<DoctorDetailsModel> doctorList;

  PrimaryCareProviderController primaryCareProviderController =
      Get.put(PrimaryCareProviderController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 35.h,
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  "Recent Consultants",
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
                                                primaryCareProviderController
                                                    .onSelectA();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color:
                                                      primaryCareProviderController
                                                              .isSelectedA.value
                                                          ? secondaryColor
                                                          : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border:
                                                      primaryCareProviderController
                                                              .isSelectedA.value
                                                          ? null
                                                          : Border.all(
                                                              color:
                                                                  borderColor),
                                                ),
                                                child: Text(
                                                  "Family Medicine",
                                                  style: size14Bold(
                                                      textColor:
                                                          primaryCareProviderController
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
                                                primaryCareProviderController
                                                    .onSelectB();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color:
                                                      primaryCareProviderController
                                                              .isSelectedB.value
                                                          ? secondaryColor
                                                          : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border:
                                                      primaryCareProviderController
                                                              .isSelectedB.value
                                                          ? null
                                                          : Border.all(
                                                              color:
                                                                  borderColor),
                                                ),
                                                child: Text("Paediatrician",
                                                    style: size14Bold(
                                                        textColor:
                                                            primaryCareProviderController
                                                                    .isSelectedB
                                                                    .value
                                                                ? whiteColor
                                                                : secondaryTextColor)),
                                              ),
                                            ),
                                          ),
                                          Obx(
                                            () => InkWell(
                                              onTap: () {
                                                primaryCareProviderController
                                                    .onSelectC();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color:
                                                      primaryCareProviderController
                                                              .isSelectedC.value
                                                          ? secondaryColor
                                                          : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border:
                                                      primaryCareProviderController
                                                              .isSelectedC.value
                                                          ? null
                                                          : Border.all(
                                                              color:
                                                                  borderColor),
                                                ),
                                                child: Text(
                                                  "Dermatologist",
                                                  style: size14Bold(
                                                      textColor:
                                                          primaryCareProviderController
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
                                      Wrap(
                                        spacing: 15.sp,
                                        children: [
                                          Obx(
                                            () => InkWell(
                                              onTap: () {
                                                primaryCareProviderController
                                                    .onSelectD();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color:
                                                      primaryCareProviderController
                                                              .isSelectedD.value
                                                          ? secondaryColor
                                                          : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border:
                                                      primaryCareProviderController
                                                              .isSelectedD.value
                                                          ? null
                                                          : Border.all(
                                                              color:
                                                                  borderColor),
                                                ),
                                                child: Text(
                                                  "Surgeon",
                                                  style: size14Bold(
                                                      textColor:
                                                          primaryCareProviderController
                                                                  .isSelectedD
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
                                                primaryCareProviderController
                                                    .onSelectE();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color:
                                                      primaryCareProviderController
                                                              .isSelectedE.value
                                                          ? secondaryColor
                                                          : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border:
                                                      primaryCareProviderController
                                                              .isSelectedE.value
                                                          ? null
                                                          : Border.all(
                                                              color:
                                                                  borderColor),
                                                ),
                                                child: Text(
                                                  "Cardiologist",
                                                  style: size14Bold(
                                                      textColor:
                                                          primaryCareProviderController
                                                                  .isSelectedE
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
                                                primaryCareProviderController
                                                    .onSelectF();
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(5.sp),
                                                decoration: BoxDecoration(
                                                  color:
                                                      primaryCareProviderController
                                                              .isSelectedF.value
                                                          ? secondaryColor
                                                          : whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.sp),
                                                  border:
                                                      primaryCareProviderController
                                                              .isSelectedF.value
                                                          ? null
                                                          : Border.all(
                                                              color:
                                                                  borderColor),
                                                ),
                                                child: Text(
                                                  "Gynaecologist",
                                                  style: size14Bold(
                                                      textColor:
                                                          primaryCareProviderController
                                                                  .isSelectedF
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
                                        height: 50.h,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.back();
                                          primaryCareProviderController
                                                      .selectedFilter.value ==
                                                  ''
                                              ? null
                                              : Get.toNamed(
                                                  RoutesConstants
                                                      .primaryCareProviderSearch,
                                                  arguments: [
                                                      primaryCareProviderController
                                                          .selectedFilter.value
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
                                              'SHOW DOCTORS',
                                              style: size12Bold(
                                                  textColor: whiteColor),
                                            ),
                                          ),
                                        ),
                                      )
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
              itemCount: doctorList.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (
                BuildContext build,
                int index,
              ) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(
                        RoutesConstants.primaryCareProviderDetailsScreen,
                        arguments: [doctorList[index]]);
                  },
                  child: getRecentDoctor(doctorList[index]),
                );
              }),
        ),
      ],
    );
  }

  Widget getRecentDoctor(DoctorDetailsModel data) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0.sp, 8.sp, 10.sp, 8.sp),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[primaryColor, secondaryColor])),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              child: Image.network(
                data.docImage!,
                height: 60.h,
                width: 60.h,
                fit: BoxFit.fill,
              ),
            ),
            title: SizedBox(
              height: 7.h,
            ),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "${data.docName}",
                      style: size20Bold(textColor: whiteColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "${data.docSpec}",
                      style: size14Regular(textColor: whiteColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "${data.docType}",
                      style: size14Regular(textColor: whiteColor),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    SizedBox(
                      width: 5.w,
                      child: Text(
                        "|",
                        style: size14Regular(textColor: whiteColor),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Located " "${data.awayFrom}",
                      style: size14Regular(textColor: whiteColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
