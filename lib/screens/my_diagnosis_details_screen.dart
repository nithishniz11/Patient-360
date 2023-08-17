import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/DiagnosisDetailsModel.dart';
import 'package:patient_360/utils/strings.dart';
import 'package:patient_360/widgets/my_diagnosis_details/my_diagnosis_doctor%20detail.dart';
import 'package:patient_360/widgets/my_diagnosis_details/my_diagnosis_observation_report.dart';

import '../widgets/my_diagnosis_details/my_diagnosis_medication.dart';
import '../widgets/my_diagnosis_details/my_diagnosis_physicalexamination.dart';
import '../widgets/my_diagnosis_details/my_diagnosis_general_info.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import '../widgets/my_diagnosis_details/my_diagnosis_genetic_condition.dart';

class MyDiagnosisDetailsScreen extends StatelessWidget {
  final dynamic argumentData = Get.arguments;

  MyDiagnosisDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DiagnosisDetailsModel model = argumentData[0];
    String screenName = argumentData[1];
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(screenName: Strings.myDiagnosis, showBackButton: true,showHomeIcon: true,)),
      body: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h, top: 20.h),
        children: [
          MyDiagnosisGeneralInfo(
              name: model.title, recentOld: screenName),

          MyDiagnosisDoctorDetail(diagnosisDetail: model,),
          MyDiagnosisObservationReport(diagnosisDetail: model,),
          const MyDiagnosisPhysicalExamination(),
          const MyDiagnosisGeneticCondition(),
          MyDiagnosisMedication(diagnosisDetail: model)
        ],
      ),
    );
  }
}
