import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/AppointmentModel.dart';
import 'package:patient_360/controller/appointment_schedule_controller.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';
import 'package:patient_360/widgets/comHelper.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class AppointmentDetailsButton extends StatelessWidget {
  AppointmentDetailsButton({Key? key, required this.appointmentDetails})
      : super(key: key);
  AppointmentModel appointmentDetails;

  // AppointmentScheduleController appointmentScheduleController =
  //     Get.put(AppointmentScheduleController());

  AppointmentScheduleController appointmentScheduleController =
      Get.find<AppointmentScheduleController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await appointmentScheduleController.dbHelper
            .saveAppointmentData(appointmentDetails)
            .then((userData) {
          LogUtils.showSnackBar(
              tag: "Appointment Created Successfully",
              message:
                  "Appointment Created on ${convertToMyFormat(appointmentDetails.appointmentDate!).toString()} at ${appointmentDetails.appointmentTime}");
          Get.toNamed(RoutesConstants.appointmentConfirmationScreen,
              arguments: [appointmentDetails]);
        }).catchError((error) {
          if (kDebugMode) {
            print(error);
          }
          LogUtils.showSnackBar(
              tag: 'Error', message: 'Appointment Not Confirmed');
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: primaryColor,
        ),
        child: Center(
          child: Text(
            "CONFIRM APPOINTMENT",
            style: size12Bold(textColor: whiteColor),
          ),
        ),
      ),
    );
  }
}
