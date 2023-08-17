import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:patient_360/DatabaseHandler/DbHelper.dart';
import 'package:patient_360/Model/edu_notification_model.dart';
import 'package:patient_360/Model/health_notification_model.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/text_style.dart';

class NotificationScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxList<HealthNotificationDetails> healthNotificationList =
      <HealthNotificationDetails>[].obs;
  RxList<EducationNotificationDetails> educationNotificationList =
      <EducationNotificationDetails>[].obs;
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        "HEALTH",
        style: size12Bold(),
      ),
    ),
    Tab(
      child: Text("EDUCATION", style: size12Bold()),
    )
  ];

  late TabController controller;
  RxInt currentTabIndex = 0.obs;
  var dbHelper;

  Future<List<HealthNotificationDetails>> fetchHealthNotificationList() async {
    final String response =
        await rootBundle.loadString(AppFiles.healthNotificationDetails);

    healthNotificationList.value =
        HealthNotificationDetails().healthNotificationListFromJson(response);
    return healthNotificationList;
  }

  Future<List<EducationNotificationDetails>>
      fetchEducationNotificationList() async {
    final String response =
        await rootBundle.loadString(AppFiles.educationNotificationDetails);
    educationNotificationList.value =
        EducationNotificationDetails().eduNotificationListFromJson(response);
    return educationNotificationList;
  }

  @override
  void onInit() async {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
    dbHelper = DbHelper();
    await fetchHealthNotificationList();
    await fetchEducationNotificationList();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
