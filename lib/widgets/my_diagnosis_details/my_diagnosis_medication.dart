import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/Model/DiagnosisDetailsModel.dart';
import 'package:patient_360/utils/text_style.dart';

import '../../utils/colors.dart';

class MyDiagnosisMedication extends StatelessWidget {
  MyDiagnosisMedication({Key? key, required this.diagnosisDetail})
      : super(key: key);
  DiagnosisDetailsModel diagnosisDetail;

  final List _medication = [
    {"tablet1": "Envos 2.5mg", "tablet2": "Roctac 500mg"}
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.2.sp, color: Colors.grey),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Medications",
                    style: size14Bold(textColor: primaryTextColor)),
                SizedBox(
                  height: 10.h,
                ),
                ListView.builder(
                  itemCount: diagnosisDetail.medication!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Row(
                          children: [
                            Text("Tab - ",
                                style:
                                    size12Regular(textColor: secondaryTextColor)),
                            Text(diagnosisDetail.medication![index].tablet!,
                                style:
                                    size12Regular(textColor: secondaryTextColor)),
                          ],
                        ))
              ],
            ),
          ),
        ));
  }
}
