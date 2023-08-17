import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';
import '../widgets/appointment_details/appointment_details_button.dart';
import '../widgets/appointment_details/appointment_details_information.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  AppointmentDetailsScreen({Key? key}) : super(key: key);
  dynamic arg = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: const CommonAppBar(
          screenName: "Appointment Details",
          showBackButton: true,
          showHomeIcon: true,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppointmentDetailsInformation(appointmentDetails: arg[0],),
            Row(
              children: [
                Expanded(
                  child: AppointmentDetailsButton(appointmentDetails: arg[0],),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
