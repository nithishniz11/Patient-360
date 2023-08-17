import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/Model/AppointmentModel.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/widgets/comHelper.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class AppointmentDetailsInformation extends StatelessWidget {
  AppointmentDetailsInformation({Key? key, required this.appointmentDetails})
      : super(key: key);
  AppointmentModel appointmentDetails;

  @override
  Widget build(BuildContext context) {
    List oc = [
      {
        "i":
            "https://media.istockphoto.com/id/177373093/photo/indian-male-doctor.jpg?s=612x612&w=0&k=20&c=5FkfKdCYERkAg65cQtdqeO_D0JMv6vrEdPw3mX1Lkfg=",
        "n": "Dr. Robert",
        "s": "Gynacologist",
        "mc": "Video Consultation",
        "dt": "Mar 30, 2023 | 12:30 PM",
        "dc": "55",
        "cp": "25",
        "tp": "80",
      },
      {
        "i":
            "https://media.istockphoto.com/id/177373093/photo/indian-male-doctor.jpg?s=612x612&w=0&k=20&c=5FkfKdCYERkAg65cQtdqeO_D0JMv6vrEdPw3mX1Lkfg=",
        "n": "Dr. James",
        "s": "Gynaecologist",
        "mc": "Video Consultation",
        "dt": "Mar 30, 2023 | 12:30 PM",
        "dc": "55",
        "cp": "25",
        "tp": "80",
      },
    ];

    return SizedBox(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Column(
          children: [
            // Container(
            //   height: 107.h,
            //   padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
            //   // padding: EdgeInsets.fromLTRB(5.sp, 8.sp, 10.sp, 8.sp),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20.sp),
            //       gradient: const LinearGradient(
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //           colors: <Color>[primaryColor, secondaryColor])),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         padding: EdgeInsets.only(right: 20.sp),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10.r)),
            //           child: Image.asset(AppImages.doctor1)),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Column(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     "Dr. ${appointmentDetails.doctorName}",
            //                     style: size14Bold(textColor: whiteColor),
            //                   ),
            //                   Text(
            //                     "${appointmentDetails.doctorSpeciality}",
            //                     style: size14Regular(textColor: whiteColor),
            //                   ),
            //                 ],
            //               ),
            //               Icon(
            //                 Icons.note_alt_outlined,
            //                 size: 30.sp,
            //                 color: whiteColor,
            //               ),
            //             ],
            //           ),
            //           Row(
            //             children: [
            //               Text(
            //                 "${appointmentDetails.appointmentType}",
            //                 style: size14Regular(textColor: whiteColor),
            //               ),
            //             ],
            //           ),
            //           Row(
            //             children: [
            //               Text(
            //                 "${appointmentDetails.appointmentDateTime}",
            //                 style: size16Bold(textColor: whiteColor),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [primaryColor, secondaryColor],
                ),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    child: Image.network(
                      appointmentDetails.doctorImg!,
                      height: 80.h,
                      width: 80.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${appointmentDetails.doctorName}",
                        style: size14Bold(textColor: whiteColor),
                      ),
                      Text(
                        "${appointmentDetails.doctorSpeciality}",
                        style: size14Regular(textColor: whiteColor),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.sp),
                        child: Container(
                          width: 200.w,
                          height: 1.h,
                          color: whiteColor,
                        ),
                      ),
                      Text(
                        "${appointmentDetails.appointmentType}",
                        style: size14Regular(textColor: whiteColor),
                      ),
                      Text(
                        "${convertToMyFormat('${appointmentDetails.appointmentDate}').toString()} | ${appointmentDetails.appointmentTime}",
                        style: size14Bold(textColor: whiteColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.sp),
                  child: Text(
                    "Consulting Charges",
                    style: size14Bold(textColor: blackColor),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10.sp),
                  child: Text(
                    "Physician Charges",
                    style: size14Bold(textColor: secondaryTextColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.sp),
                  child: Text(
                    "\$" + oc[0]["dc"],
                    style: size14Bold(textColor: secondaryTextColor),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10.sp),
                  child: Text(
                    "Co-payment",
                    style: size14Bold(textColor: secondaryTextColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.sp),
                  child: Text(
                    "\$" + oc[0]["cp"],
                    style: size14Bold(textColor: secondaryTextColor),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1.sp,
              color: secondaryTextColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10.sp),
                  child: Text(
                    "Total Payment",
                    style: size14Bold(textColor: blackColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.sp),
                  child: Text(
                    "\$" + oc[0]["tp"],
                    style: size14Bold(textColor: blackColor),
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
