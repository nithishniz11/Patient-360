import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/notification_controller.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_360/utils/text_style.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  HomeController controller = Get.find<HomeController>();
  NotificationScreenController notificationScreenController =
      Get.put(NotificationScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: "Notification",
            showHomeIcon: true,
            showBackButton: true,
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 8.sp),
              decoration: BoxDecoration(
                color: toggelBackgroundColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TabBar(
                controller: notificationScreenController.controller,
                labelColor: whiteColor,
                labelStyle: size14Bold(textColor: whiteColor),
                unselectedLabelColor: secondaryTextColor,
                unselectedLabelStyle: size14Bold(textColor: secondaryTextColor),
                indicatorColor: secondaryTextColor,
                indicator: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                tabs: const <Tab>[
                  Tab(
                    child: Text(
                      "HEALTH",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "EDUCATION",
                    ),
                  ),
                ],
                onTap: (index) {
                  notificationScreenController.currentTabIndex.value = index;
                },
              ),
            ).paddingSymmetric(horizontal: 20.sp, vertical: 20.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All notification",
                  style: size14Bold(),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Filter',
                    style: size14Medium(textColor: secondaryColor),
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 20.sp),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: notificationScreenController.controller,
                children: [
                  _healthNotificationList(),
                  _educationNotificationList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _healthNotificationList() {
    return Obx(
      () => ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
        itemCount: notificationScreenController.healthNotificationList.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1.sp,
            color: dividerColor,
          );
        },
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
              radius: 19.r,
              child: SvgPicture.asset(notificationScreenController
                          .healthNotificationList[index].notificationType ==
                      "appointment"
                  ? AppIcons.appointmentIcon
                  : notificationScreenController
                              .healthNotificationList[index].notificationType ==
                          "report"
                      ? AppIcons.reportIcon
                      : AppIcons.prescriptionSelectedIcon)),
          title: Text(
            '${notificationScreenController.healthNotificationList[index].title}',
            textAlign: TextAlign.justify,
            style: size14Medium(
                textColor: notificationScreenController
                            .healthNotificationList[index].unread ==
                        "true"
                    ? blackColor
                    : secondaryTextColor),
          ),
          subtitle: Text(
            '${notificationScreenController.healthNotificationList[index].time}',
            style: size10Medium(textColor: secondaryTextColor),
          ),
        ),
      ),
    );
  }

  Widget _educationNotificationList() {
    return Obx(
      () => ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
        itemCount:
            notificationScreenController.educationNotificationList.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1.sp,
            color: dividerColor,
          );
        },
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
              radius: 19.r,
              child: SvgPicture.asset(notificationScreenController
                          .educationNotificationList[index].notificationType ==
                      "video"
                  ? AppIcons.videoIcon
                  : notificationScreenController
                              .educationNotificationList[index]
                              .notificationType ==
                          "audio"
                      ? AppIcons.audioIcon
                      : notificationScreenController
                                  .educationNotificationList[index]
                                  .notificationType ==
                              "audio"
                          ? AppIcons.audioIcon
                          : AppIcons.lectureIcon)),
          title: Text(
            '${notificationScreenController.educationNotificationList[index].title}',
            textAlign: TextAlign.start,
            style: size14Medium(
                textColor: notificationScreenController
                            .educationNotificationList[index].unread ==
                        "true"
                    ? blackColor
                    : secondaryTextColor),
          ),
          subtitle: Text(
            '${notificationScreenController.educationNotificationList[index].time}',
            style: size10Medium(textColor: secondaryTextColor),
          ),
        ),
      ),
    );
  }
}
