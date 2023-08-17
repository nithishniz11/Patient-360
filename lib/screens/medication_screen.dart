import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

import '../widgets/My_Medication/medication_search_bar.dart';
import '../widgets/My_Medication/medication_info.dart';
import 'package:get/get.dart';

class MedicationScreen extends StatelessWidget {
  MedicationScreen({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: "Medication",
            showBackButton: false,
            showHomeIcon: false,
          )),
      body: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.all(20.sp),
        children: [
          MyMedicationSearchBar(controller: homeController,),
          // MedicationSearch(),
          MedicationInfo(
            controller: homeController,
          ),
        ],
      ),
    );
  }
}
