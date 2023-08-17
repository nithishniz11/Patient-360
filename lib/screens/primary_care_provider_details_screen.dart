import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:patient_360/Model/AppointmentModel.dart';
import 'package:patient_360/Model/doctor_details_model.dart';
import 'package:patient_360/controller/appointment_schedule_controller.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';
import 'package:patient_360/utils/text_style.dart';
import 'package:patient_360/widgets/comHelper.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PrimaryCareProviderDetailsScreen extends StatelessWidget {
  PrimaryCareProviderDetailsScreen({Key? key}) : super(key: key);
  dynamic arg = Get.arguments;
  int selectedToggle = 1;
  AppointmentScheduleController appointmentScheduleController =
      Get.put(AppointmentScheduleController());
  final _listGenderText = ["IN PERSON\nAPPOINTMENT", "VIDEO\nCONSULTATION"];
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    DoctorDetailsModel doctorDetails = arg[0];
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: const CommonAppBar(
            screenName: 'Primary Care Provider',
            showBackButton: true,
            showHomeIcon: true,
          )),
      body: Container(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h, top: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getDoctorDetails(doctorDetails),
            Row(
              children: [
                Expanded(
                  child: scheduleAppointment(doctorDetails),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget pastAppointmentScheduleAt(PastAppointment data) {
    return Row(
      children: [
        Text(
          "\u2022",
          style: size12Bold(),
        ), //bullet text
        SizedBox(
          width: 10.w,
        ),
        Text(
          "${data.appointmentScheduleAt}",
          style: size12Medium(),
        ),
      ],
    );
  }

  Widget pastAppointmentDate(PastAppointment data) {
    return Text(
      convertToMyFormat(data.appointmentDate!).toString(),
      style: size12Medium(),
    );
  }

  Widget getDoctorDetails(DoctorDetailsModel detailsModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${detailsModel.docName}",
                  style: size14Bold(),
                ),
                Text(
                  "${detailsModel.docSpec}",
                  style: size12Regular(),
                ),
                SizedBox(height: 10.h),
                Container(width: 140.w, height: 1.h, color: dividerColor),
                SizedBox(height: 10.h),
                Text(
                  "${detailsModel.docHospitalName}",
                  style: size14Bold(),
                ),
                Text(
                  "${detailsModel.location}",
                  style: size12Regular(),
                ),
                SizedBox(height: 15.h),
                Text(
                  "${detailsModel.patientTreated}",
                  style: size14Bold(),
                ),
                Text(
                  "Patients treated",
                  style: size12Regular(),
                )
              ],
            ),
            SizedBox(
              width: 65.w,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              child: Image.network(
                detailsModel.docImage!,
                height: 150.h,
                width: 125.h,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Text(
          "Bio",
          style: size14Bold(),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "${detailsModel.bio}",
          style: size12Regular(),
        ),
        SizedBox(
          height: 15.h,
        ),

        Text(
          "Areas of Expertise",
          style: size14Bold(),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "${detailsModel.expertise}",
          style: size12Regular(),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Consulting Hours",
          style: size14Bold(),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "\u2022",
                      style: size12Bold(),
                    ), //bullet text
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "${detailsModel.consultingHours!.first.consultingPeriod}",
                      style: size12Medium(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text(
                      "${detailsModel.consultingHours!.first.consultingTimeStart} - ${detailsModel.consultingHours!.first.consultingTimeEnd}",
                      style: size12Regular()),
                )
              ],
            ),
            SizedBox(
              width: 50.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "\u2022",
                      style: size12Bold(),
                    ), //bullet text
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "${detailsModel.consultingHours!.last.consultingPeriod}",
                      style: size12Medium(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text(
                      "${detailsModel.consultingHours!.last.consultingTimeStart} - ${detailsModel.consultingHours!.last.consultingTimeEnd}",
                      style: size12Regular()),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        // Text(
        //   "Past Appointments",
        //   style: size14Bold(),
        // ),
        // SizedBox(
        //   height: 10.h,
        // ),
        // Row(
        //   children: [
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: List.generate(
        //           detailsModel.pastAppointment!.length,
        //           (index) => pastAppointmentScheduleAt(
        //               detailsModel.pastAppointment![index])),
        //     ),
        //     SizedBox(
        //       width: 50.w,
        //     ),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: List.generate(
        //           detailsModel.pastAppointment!.length,
        //           (index) => pastAppointmentDate(
        //               detailsModel.pastAppointment![index])),
        //     ),
        //   ],
        // ),
      ],
    );
  }

  Widget scheduleAppointment(DoctorDetailsModel detailsModel) {
    return GestureDetector(
      key: _scaffold,
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: _scaffold.currentContext!,
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(25),
                topStart: Radius.circular(25),
              ),
            ),
            builder: (context) => Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    alignment: WrapAlignment.spaceEvenly,
                    spacing: 20.sp,
                    children: [
                      const Divider(thickness: 4, indent: 100, endIndent: 100),
                      // SizedBox(
                      //   height: 15.h,
                      // ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.sp),
                        child: Text(
                          "Schedule New Appointment",
                          style: size14Bold(),
                        ),
                      ),
                      // SizedBox(
                      //   height: 15.h,
                      // ),

                      ToggleSwitch(
                        minWidth: 350.sp,
                        cornerRadius: 10.r,
                        activeBgColors: const [
                          [primaryColor],
                          [primaryColor]
                        ],
                        activeFgColor: toggelBackgroundColor,
                        inactiveBgColor: toggelBackgroundColor,
                        borderColor: const [
                          toggelBackgroundColor,
                          toggelBackgroundColor
                        ],
                        customTextStyles: [
                          size12Bold(textColor: whiteColor),
                          size12Bold(textColor: whiteColor)
                        ],
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        labels: _listGenderText,
                        radiusStyle: true,
                        onToggle: (index) {
                          if (kDebugMode) {
                            print('switched to: $index');
                          }
                          selectedToggle = index!;
                        },
                      ),
                      // SizedBox(
                      //   height: 15.h,
                      // ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        child: SfDateRangePicker(
                          onSelectionChanged:
                              appointmentScheduleController.onSelectionChanged,

                          // onSubmit: (Object value) {
                          //   Navigator.pop(context);
                          // },
                          // onCancel: () {
                          //   Navigator.pop(context);
                          // },
                        ),
                      ),
                      // Here default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.sp),
                        child: Text(
                          "Time",
                          style: size14Bold(),
                        ),
                      ),
                      // SizedBox(
                      //   height: 15.h,
                      // ),
                      //
                      // SizedBox(
                      //   height: 15.h,
                      // ),

                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    appointmentScheduleController.onSelectA();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: appointmentScheduleController
                                              .isSelectedA.value
                                          ? secondaryColor
                                          : whiteColor,
                                      borderRadius: BorderRadius.circular(8.sp),
                                      border: appointmentScheduleController
                                              .isSelectedA.value
                                          ? null
                                          : Border.all(color: borderColor),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: Text(
                                        "09:30 AM",
                                        style: size14Bold(
                                            textColor:
                                                appointmentScheduleController
                                                        .isSelectedA.value
                                                    ? whiteColor
                                                    : secondaryTextColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    appointmentScheduleController.onSelectB();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: appointmentScheduleController
                                              .isSelectedB.value
                                          ? secondaryColor
                                          : whiteColor,
                                      borderRadius: BorderRadius.circular(8.sp),
                                      border: appointmentScheduleController
                                              .isSelectedB.value
                                          ? null
                                          : Border.all(color: borderColor),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: Text(
                                        "10:00 AM",
                                        style: size14Bold(
                                            textColor:
                                                appointmentScheduleController
                                                        .isSelectedB.value
                                                    ? whiteColor
                                                    : secondaryTextColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    appointmentScheduleController.onSelectC();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: appointmentScheduleController
                                              .isSelectedC.value
                                          ? secondaryColor
                                          : whiteColor,
                                      borderRadius: BorderRadius.circular(8.sp),
                                      border: appointmentScheduleController
                                              .isSelectedC.value
                                          ? null
                                          : Border.all(color: borderColor),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: Text(
                                        "11:00 AM",
                                        style: size14Bold(
                                            textColor:
                                                appointmentScheduleController
                                                        .isSelectedC.value
                                                    ? whiteColor
                                                    : secondaryTextColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    appointmentScheduleController.onSelectD();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: appointmentScheduleController
                                              .isSelectedD.value
                                          ? secondaryColor
                                          : whiteColor,
                                      borderRadius: BorderRadius.circular(8.sp),
                                      border: appointmentScheduleController
                                              .isSelectedD.value
                                          ? null
                                          : Border.all(color: borderColor),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: Text(
                                        "11:30 AM",
                                        style: size14Bold(
                                            textColor:
                                                appointmentScheduleController
                                                        .isSelectedD.value
                                                    ? whiteColor
                                                    : secondaryTextColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    appointmentScheduleController.onSelectE();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: appointmentScheduleController
                                              .isSelectedE.value
                                          ? secondaryColor
                                          : whiteColor,
                                      borderRadius: BorderRadius.circular(8.sp),
                                      border: appointmentScheduleController
                                              .isSelectedE.value
                                          ? null
                                          : Border.all(color: borderColor),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: Text(
                                        "12:30 PM",
                                        style: size14Bold(
                                            textColor:
                                                appointmentScheduleController
                                                        .isSelectedE.value
                                                    ? whiteColor
                                                    : secondaryTextColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Obx(
                                () => InkWell(
                                  onTap: () {
                                    appointmentScheduleController.onSelectF();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: appointmentScheduleController
                                              .isSelectedF.value
                                          ? secondaryColor
                                          : whiteColor,
                                      borderRadius: BorderRadius.circular(8.sp),
                                      border: appointmentScheduleController
                                              .isSelectedF.value
                                          ? null
                                          : Border.all(color: borderColor),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: Text(
                                        "01:30 PM",
                                        style: size14Bold(
                                            textColor:
                                                appointmentScheduleController
                                                        .isSelectedF.value
                                                    ? whiteColor
                                                    : secondaryTextColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 15.h,
                      // ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 20.sp),
                        child: GestureDetector(
                          onTap: () async {
                            String appointmentID =
                                DateTime.now().toIso8601String();
                            String patientID =
                                await appointmentScheduleController.getUserId();
                            String? patientName = appointmentScheduleController
                                .user.value.userName;
                            String appointmentType = selectedToggle == 1
                                ? "Video Consultation"
                                : "In Person Appointment";
                            String appointmentDate =
                                appointmentScheduleController.selectedDate.value
                                    .split(" ")
                                    .first;
                            String? appointmentTime =
                                appointmentScheduleController
                                    .selectedTime.value;
                            String doctorName = "${detailsModel.docName}";
                            String doctorSpeciality = "${detailsModel.docSpec}";
                            String doctorImg = "${detailsModel.docImage}";

                            AppointmentModel uModel = AppointmentModel(
                                appointmentId: appointmentID,
                                patientId: patientID,
                                patientName: patientName,
                                appointmentDate: appointmentDate,
                                appointmentTime: appointmentTime,
                                appointmentType: appointmentType,
                                doctorName: doctorName,
                                doctorImg: doctorImg,
                                doctorSpeciality: doctorSpeciality);
                            (appointmentScheduleController.isSelectedA ==
                                        false &&
                                    appointmentScheduleController.isSelectedB ==
                                        false &&
                                    appointmentScheduleController.isSelectedC ==
                                        false &&
                                    appointmentScheduleController.isSelectedD ==
                                        false &&
                                    appointmentScheduleController.isSelectedE ==
                                        false &&
                                    appointmentScheduleController.isSelectedF ==
                                        false)
                                ? LogUtils.showSnackBar(
                                tag: "Unable to Proceed",
                                message:
                                "Please Select Date & Time"
                            )
                                : Get.toNamed(
                                    RoutesConstants.appointmentDetailsScreen,
                                    arguments: [uModel]);
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
                                'PROCEED',
                                style: size12Bold(textColor: whiteColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: primaryColor,
        ),
        child: Center(
          child: Text(
            'SCHEDULE NEW APPOINTMENT',
            style: size12Bold(textColor: whiteColor),
          ),
        ),
      ),
    );
  }
}
