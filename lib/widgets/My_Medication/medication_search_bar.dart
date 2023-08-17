import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/home_controller.dart';

import '../../utils/routes/routes_strings.dart';
import '../../utils/text_style.dart';

class MyMedicationSearchBar extends StatelessWidget {
  MyMedicationSearchBar({Key? key, required this.controller}) : super(key: key);
  HomeController controller;

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: TextField(
          controller: search,
          onSubmitted: (value) {
            Get.toNamed(RoutesConstants.medicationSearchScreen,
                arguments: [search.text, controller.diagnosisDetailsList]);
          },
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 20.sp,
            ),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(20.sp),
            // ),
            border: InputBorder.none,
            filled: true,
            hintText: "Search for Medication",
            hintStyle: size12Regular(),
          ),
        ),
      ),
    );
  }
}
