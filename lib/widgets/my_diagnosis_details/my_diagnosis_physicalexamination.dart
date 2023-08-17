import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/text_style.dart';

import '../../utils/colors.dart';

class MyDiagnosisPhysicalExamination extends StatefulWidget {
  const MyDiagnosisPhysicalExamination({Key? key}) : super(key: key);

  @override
  State<MyDiagnosisPhysicalExamination> createState() =>
      _MyDiagnosisPhysicalExaminationState();
}

class _MyDiagnosisPhysicalExaminationState
    extends State<MyDiagnosisPhysicalExamination> {
  List doctorDetail = [
    {
      "location": "Advert Health, Texas",
      "last_treated": "Mar 30, 2023",
      "Senior": "Dr. Robert James",
      "general": "Dr. Albert Fisnes"
    }
  ];

  final List _physicalExamination = [
    {
      "height": "5' 9\"",
      "weight": "160 lbs",
      "bp": "140/80 mmHg",
      "pulse": "72 min",
      "spo": "97%",
      "rr": "14"
    }
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
                itemCount: _physicalExamination.length,
                padding: EdgeInsets.all(20.sp),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Physical Examination",
                            style: size14Bold(textColor: primaryTextColor)),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_physicalExamination[index]["height"],
                                        style:
                                            size12Bold(textColor: primaryTextColor)),
                                    Text("Height",
                                        style: size12Regular(
                                            textColor: secondaryTextColor))
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_physicalExamination[index]["pulse"],
                                        style:
                                            size12Bold(textColor: primaryTextColor)),
                                    Text("Pulse",
                                        style: size12Regular(
                                            textColor: secondaryTextColor))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_physicalExamination[index]["weight"],
                                        style:
                                            size12Bold(textColor: primaryTextColor)),
                                    Text("Weight",
                                        style: size12Regular(
                                            textColor: secondaryTextColor))
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_physicalExamination[index]["spo"],
                                        style:
                                            size12Bold(textColor: primaryTextColor)),
                                    Text("Blood Oxygen",
                                        style: size12Regular(
                                            textColor: secondaryTextColor))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_physicalExamination[index]["bp"],
                                        style:
                                            size12Bold(textColor: primaryTextColor)),
                                    Text("Blood Pressure",
                                        style: size12Regular(
                                            textColor: secondaryTextColor))
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_physicalExamination[index]["rr"],
                                        style:
                                            size12Bold(textColor: primaryTextColor)),
                                    Text("Respiratory rate",
                                        style: size12Regular(
                                            textColor: secondaryTextColor))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ]);
                }),
          )),
    );
  }
}
