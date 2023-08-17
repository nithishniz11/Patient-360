import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/text_style.dart';

import '../../utils/colors.dart';

class MyDiagnosisGeneticCondition extends StatefulWidget {
  const MyDiagnosisGeneticCondition({Key? key}) : super(key: key);

  @override
  State<MyDiagnosisGeneticCondition> createState() =>
      _MyDiagnosisGeneticConditionState();
}

class _MyDiagnosisGeneticConditionState
    extends State<MyDiagnosisGeneticCondition> {
  final List _geneticCondition = [
    {"condition": "None Reported"}
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.sp),
      child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.2.sp, color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: ListView.builder(
                itemCount: _geneticCondition.length,
                padding: EdgeInsets.all(20.sp),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Genetic Conditions",
                          style: size14Bold(textColor: primaryTextColor)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        _geneticCondition[index]["condition"],
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                    ],
                  );
                }),
          )),
    );
  }
}
