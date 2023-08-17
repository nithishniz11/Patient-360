import 'package:flutter/material.dart';
import 'package:patient_360/controller/appointment_schedule_controller.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/text_style.dart';
import 'package:patient_360/widgets/comHelper.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AllAppointmentScreen extends StatefulWidget {
  AllAppointmentScreen({Key? key}) : super(key: key);

  // dynamic arg = Get.arguments;

  @override
  State<AllAppointmentScreen> createState() => _AllAppointmentScreenState();
}

class _AllAppointmentScreenState extends State<AllAppointmentScreen> {
  AppointmentScheduleController appointmentScheduleController =
      Get.put(AppointmentScheduleController());

  @override
  Widget build(BuildContext context) {
    // LogUtils.showPrint(widget.arg.length as String);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.sp),
        child: const CommonAppBar(
          screenName: "Upcoming Appointments",
          showBackButton: true,
          showHomeIcon: true,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
        child: ListView.separated(
          itemCount:
              appointmentScheduleController.appointmentList.reversed.length,
          itemBuilder: (context, i) => Container(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  child: Image.network(
                    appointmentScheduleController.appointmentList[i].doctorImg!,
                    height: 70.h,
                    width: 70.h,
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
                      '${appointmentScheduleController.appointmentList[i].doctorName}',
                      style: size14Bold(textColor: whiteColor),
                    ),
                    Text(
                      '${appointmentScheduleController.appointmentList[i].doctorSpeciality}',
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
                      '${appointmentScheduleController.appointmentList[i].appointmentType}',
                      style: size14Regular(textColor: whiteColor),
                    ),
                    Text(
                      '${convertToMyFormat('${appointmentScheduleController.appointmentList[i].appointmentDate}').toString()} | ${appointmentScheduleController.appointmentList[i].appointmentTime}',
                      style: size14Bold(textColor: whiteColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 20.sp,
          ),
        ),
      ),
    );
  }
}
