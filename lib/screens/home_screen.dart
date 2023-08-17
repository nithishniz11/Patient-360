import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/appointment_schedule_controller.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';
import 'package:patient_360/utils/strings.dart';
import 'package:patient_360/utils/text_style.dart';
import 'package:patient_360/widgets/comHelper.dart';
import 'package:patient_360/widgets/gradient_text.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var dbHelper;

  AppointmentScheduleController appointmentScheduleController =
      Get.put(AppointmentScheduleController());
  HomeController homeController = Get.put(HomeController());

  final List _list = [
    {
      "name": "Blood Pressure",
      "value": "140/80",
    },
    {
      "name": "Blood Oxygen",
      "value": "97%",
    },
    {
      "name": "Pulse Rate",
      "value": "72",
    },
    {
      "name": "Body Fat",
      "value": "35%",
    },
    {
      "name": "Cholesterol",
      "value": "240",
    },
    {
      "name": "Immunization",
      "value": "",
    },
  ];

  final List _list2 = ['mmHg', '', 'bpm', '', 'mg/dL', 'DTap, Influenza'];

  final List _icon = [
    AppIcons.bloodPressureIcon,
    AppIcons.bloodOxygenIcon,
    AppIcons.pulseRateIcon,
    AppIcons.bodyFatIcon,
    AppIcons.cholesterolIcon,
    AppIcons.immunizationIcon
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGroundColor,
      appBar: AppBar(
        title: GradientText(
          Strings.appNameInCapital,
          style: size14Bold(),
          gradient: const LinearGradient(
            colors: [
              primaryColor,
              secondaryColor,
            ],
          ),
        ),
        centerTitle: false,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconButton(
              icon: SvgPicture.asset(
                AppIcons.bellIcon,
                // ignore: deprecated_member_use
                color: secondaryColor,
              ),
              onPressed: () {
                Get.toNamed(RoutesConstants.notificationScreen);
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Obx(
                () => Text(
                  "${appointmentScheduleController.user.value.userName ?? Strings.userName} ",
                  style: size24Bold(textColor: primaryColor),
                ),
              ),
              Obx(
                () => Text(
                  "${homeController.greetingMes.value}!",
                  style: size14Regular(textColor: secondaryTextColor),
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                itemCount: _list.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.sp,
                  mainAxisSpacing: 10.sp,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 4.5),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 20.h),
                      color: whiteColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            _icon[index],
                            height: 32.h,
                            width: 32.w,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                _list[index]['name'],
                                style: size12Bold(),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    _list[index]['value'],
                                    style: size14Bold(textColor: primaryColor),
                                  ),
                                  Text(
                                    _list2[index],
                                    style: size10Bold(
                                        textColor: secondaryTextColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesConstants.primaryCareProviderScreen);
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
              ),
              SizedBox(
                height: 20.h,
              ),
              Obx(() => appointmentScheduleController
                          .appointment.value.appointmentId ==
                      null
                  ? const SizedBox()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming Appointment',
                          style: size14Bold(),
                        ),
                        GestureDetector(
                            onTap: () {
                              LogUtils.showPrint(
                                  "${appointmentScheduleController.appointmentList.length}");
                              Get.toNamed(RoutesConstants.allAppointmentScreen,
                                  arguments: [
                                    appointmentScheduleController
                                        .appointmentList
                                  ]);
                            },
                            child: Text(
                              'View All',
                              style: size14Bold(textColor: secondaryColor),
                            ))
                      ],
                    )),
              Obx(() => appointmentScheduleController
                          .appointment.value.appointmentId ==
                      null
                  ? const SizedBox()
                  : SizedBox(
                      height: 20.h,
                    )),
              // if (appointmentScheduleController.appointment().isBlank == true)
              //   const SizedBox()
              // else
              Obx(
                () => appointmentScheduleController
                            .appointment.value.appointmentId ==
                        null
                    ? const SizedBox()
                    : Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [primaryColor, secondaryColor],
                          ),
                        ),
                        child:
                        Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10.r)),
                              child: Image.network(
                                appointmentScheduleController.appointment.value.doctorImg!,
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
                                  '${appointmentScheduleController.appointment.value.doctorName}',
                                  style: size14Bold(textColor: whiteColor),
                                ),
                                Text(
                                  '${appointmentScheduleController.appointment.value.doctorSpeciality}',
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
                                  '${appointmentScheduleController.appointment.value.appointmentType}',
                                  style: size14Regular(textColor: whiteColor),
                                ),
                                Text(
                                  '${convertToMyFormat('${appointmentScheduleController.appointment.value.appointmentDate}').toString()} | ${appointmentScheduleController.appointment.value.appointmentTime}',
                                  style: size14Bold(textColor: whiteColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Health and Wellness',
                style: size14Bold(),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesConstants.myDiagnosisScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: whiteColor),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcons.myDiagnosisIcon,
                            height: 32.h,
                            width: 32.w,
                          ),
                          Text(
                            'My \n Diagnosis',
                            textAlign: TextAlign.center,
                            style: size10Regular(textColor: secondaryTextColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesConstants.primaryCareProviderScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: whiteColor),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcons.primaryCareProviderIcon,
                            height: 32.h,
                            width: 32.w,
                          ),
                          FittedBox(
                            child: Text(
                              'Primary Care \n Provider',
                              textAlign: TextAlign.center,
                              style:
                                  size10Regular(textColor: secondaryTextColor),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesConstants.myClaimDetailScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: whiteColor),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcons.myPlanAndClaimsIcon,
                            height: 32.h,
                            width: 32.w,
                          ),
                          // 10.0.addHSpace(),
                          'My Plan & \n Claims'.getText()
                          /*Text(
                            'My Plan & \n Claims',
                            textAlign: TextAlign.center,
                            style: size10Regular(textColor: secondaryTextColor),
                          )*/
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesConstants.myGoalsScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: whiteColor),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcons.myGoalsIcon,
                            height: 32.h,
                            width: 32.w,
                          ),
                          Text(
                            'My \n Goals',
                            style: size10Regular(textColor: secondaryTextColor),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
