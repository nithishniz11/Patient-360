import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/doctor_details_model.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class PrimaryCareProviderOtherConsultants extends StatelessWidget {
  PrimaryCareProviderOtherConsultants({Key? key, required this.doctorList})
      : super(key: key);
  List<DoctorDetailsModel> doctorList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Row(
            children: [
              Text(
                "Other Consultants",
                style: size14Bold(),
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
                        RoutesConstants.primaryCareProviderDetailsScreen, arguments: [doctorList[index]]);
                  },
                  child: Column(
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
                              doctorList[index].docImage!,
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
                                    "${doctorList[index].docName}",
                                    style: size20Bold(textColor: whiteColor),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${doctorList[index].docSpec}",
                                    style: size14Regular(textColor: whiteColor),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${doctorList[index].docType}",
                                    style: size14Regular(textColor: whiteColor),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                    child: Text(
                                      "|",
                                      style:
                                          size14Regular(textColor: whiteColor),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Located " "${doctorList[index].awayFrom}",
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
                  ),
                );
              }),
        ),
      ],
    );
  }
}
