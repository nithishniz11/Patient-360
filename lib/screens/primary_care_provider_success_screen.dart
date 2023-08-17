import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/AppointmentModel.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';
import 'package:patient_360/utils/text_style.dart';
import 'package:patient_360/widgets/comHelper.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';

class PrimaryCareProviderSuccessScreen extends StatelessWidget {
  PrimaryCareProviderSuccessScreen({Key? key}) : super(key: key);
  dynamic arg = Get.arguments;

  @override
  Widget build(BuildContext context) {
    AppointmentModel appointmentModel = arg[0];
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: primaryColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height / 2,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 150.h, bottom: 100.h),
                  child: Column(
                    children: [
                      Icon(
                        Icons.check_circle_rounded,
                        color: Colors.white,
                        size: 100.h,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Appointment Confirmed",
                        style: size14Bold(textColor: whiteColor),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text("Your Appointment has been confirmed.",
                          style: size12Regular(textColor: whiteColor)),
                      Text("A confirmation email has been sent.",
                          style: size12Regular(textColor: whiteColor)),
                    ],
                  ),
                ),
                Container(
                  height: height / 2,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: whiteColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: secondaryColor,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Recommend this Doctor",
                                  style: size12Regular(),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.access_time,
                                  color: secondaryColor,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Set Reminder",
                                  style: size12Regular(),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.offAllNamed(RoutesConstants.homeScreen);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 15.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: primaryColor,
                            ),
                            child: Center(
                              child: Text(
                                'BACK TO HOME',
                                style: size12Bold(textColor: whiteColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 370.h,
            left: 20.sp,
            right: 20.sp,
            // bottom: 100.,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20.w, right: 20.w, bottom: 20.h, top: 20.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5.sp),
                            decoration: BoxDecoration(
                              border: Border.all(color: borderColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                              child: Image.network(
                                appointmentModel.doctorImg!,
                                height: 60.h,
                                width: 60.h,
                                fit: BoxFit.fill,
                              ),
                            )),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${appointmentModel.doctorName}',
                              style: size14Bold(),
                            ),
                            Text(
                              '${appointmentModel.doctorSpeciality}',
                              style: size12Regular(),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.sp),
                          child: Text(
                            "Name",
                            style: size12Regular(),
                          ),
                        ),
                        Text(
                          "${appointmentModel.patientName}",
                          style: size12Medium(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.sp),
                          child: Text(
                            "Date",
                            style: size12Regular(),
                          ),
                        ),
                        Text(
                          convertToMyFormat(appointmentModel.appointmentDate!)
                              .toString(),
                          style: size12Medium(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.sp),
                          child: Text(
                            "Time",
                            style: size12Regular(),
                          ),
                        ),
                        Text(
                          "${appointmentModel.appointmentTime}",
                          style: size12Medium(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
