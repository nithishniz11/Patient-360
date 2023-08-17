import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/primary_care_provider_controller.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'package:patient_360/widgets/primary_care_provider/primary_care_provider_other_consultants.dart';
import 'package:patient_360/widgets/primary_care_provider/primary_care_provider_recent_consultants.dart';
import 'package:patient_360/widgets/primary_care_provider/primary_care_provider_search_bar.dart';

class PrimaryCareProviderScreen extends StatelessWidget {
  PrimaryCareProviderScreen({Key? key}) : super(key: key);

  PrimaryCareProviderController primaryCareProviderController =
      Get.put(PrimaryCareProviderController());

  @override
  Widget build(BuildContext context) {
    LogUtils.showLogs(
        tag: "DOCTOR LIST",
        message: "${primaryCareProviderController.doctorList.value.length}");
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: 'Primary Care Provider',
            showBackButton: true,
            showHomeIcon: true,
          )),
      body: ListView(
        shrinkWrap: true,
        // padding: const EdgeInsets.all(5.0),
        physics: const ClampingScrollPhysics(),
        // children: const [
        //   SpecialistBio(),
        // ],
        padding: EdgeInsets.all(20.sp),
        children: [
          const PrimaryCareProviderSearchBar(),
          SizedBox(
            height: 7.h,
          ),
          PrimaryCareProviderRecentConsultants(
            doctorList: primaryCareProviderController.recentDoctorList,
          ),
          PrimaryCareProviderOtherConsultants(
            doctorList: primaryCareProviderController.oldeDoctorList,
          ),
        ],
      ),
    );
  }
}
