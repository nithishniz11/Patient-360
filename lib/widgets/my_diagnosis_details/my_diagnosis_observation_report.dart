import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/Model/DiagnosisDetailsModel.dart';
import 'package:readmore/readmore.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class MyDiagnosisObservationReport extends StatefulWidget {
  MyDiagnosisObservationReport({Key? key, required this.diagnosisDetail})
      : super(key: key);
  DiagnosisDetailsModel diagnosisDetail;

  @override
  State<MyDiagnosisObservationReport> createState() =>
      _MyDiagnosisObservationReportState();
}

class _MyDiagnosisObservationReportState
    extends State<MyDiagnosisObservationReport> {
  List _observationReport = [
    {
      "patient":
          "Abnormal uterine bleeding is bleeding between monthly periods, prolonged bleeding or an extremely heavy period. Possible causes include fibroids, polyps, hormone changes and — in rare cases ",
      "doctor":
          "Symptoms include heavy and prolonged periods, bleeding between periods and pelvic pain. Possible causes include fibroids, polyps, hormone changes and — in rare cases",
      "scan1": "Ultrasound",
      "text1":
          "the size of the tumour observed are 144mm in width and 122mm in height.",
      "scan2": "Echocardiogram",
      "text2": "M-Mode measurement LV DIASOLE : 50(40-55mm)",
      "lab1": "A1C Test 9.0 H",
      "lab2": "Lipid Panel",
      "lab3": "Assay of Magnesium",
      "lab4": "Hepatic Functional Panel",
      "lab5": "Glycosylated Hemoglobin"
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
                itemCount: _observationReport.length,
                padding: EdgeInsets.all(20.sp),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Patient Observation",
                            style: size14Bold(textColor: primaryTextColor)),
                        SizedBox(
                          height: 5.h,
                        ),
                        ReadMoreText(
                          "${widget.diagnosisDetail.patientObservation}",
                          trimLines: 2,
                          colorClickableText: secondaryColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'More',
                          trimExpandedText: 'Less',
                          style: size12Regular(textColor: secondaryTextColor),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("Doctor Observation",
                            style: size14Bold(textColor: primaryTextColor)),
                        SizedBox(
                          height: 5.h,
                        ),
                        ReadMoreText(
                          "${widget.diagnosisDetail.doctorObservation}",
                          trimLines: 2,
                          colorClickableText: secondaryColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'More',
                          trimExpandedText: 'Less',
                          style: size12Regular(textColor: secondaryTextColor),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("Test Results",
                            style: size14Bold(textColor: primaryTextColor)),
                        SizedBox(
                          height: 5.h,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_observationReport[index]["scan1"],
                                  style:
                                      size12Bold(textColor: primaryTextColor)),
                              Text("${widget.diagnosisDetail.ultrasCopy}",
                                  style: size12Regular(
                                      textColor: secondaryTextColor)),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_observationReport[index]["scan2"],
                                  style:
                                      size12Bold(textColor: primaryTextColor)),
                              Text("${widget.diagnosisDetail.echo}",
                                  style: size12Regular(
                                      textColor: secondaryTextColor)),
                            ]),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("Lab Reports",
                            style: size14Bold(textColor: primaryTextColor)),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "\u2022",
                                        style: size12Bold(
                                            textColor: primaryTextColor),
                                      ), //bullet text
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                          '${_observationReport[index]["lab1"]}',
                                          style: size12Regular(
                                              textColor: secondaryTextColor)),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\u2022",
                                        style: size12Bold(
                                            textColor: primaryTextColor),
                                      ), //bullet text
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(_observationReport[index]["lab2"],
                                          style: size12Regular(
                                              textColor: secondaryTextColor)),
                                      SizedBox(
                                        width: 13.w,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\u2022",
                                        style: size12Bold(
                                            textColor: primaryTextColor),
                                      ), //bullet text
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(_observationReport[index]["lab3"],
                                          style: size12Regular(
                                              textColor: secondaryTextColor)),
                                      SizedBox(
                                        width: 13.w,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\u2022",
                                        style: size12Bold(
                                            textColor: primaryTextColor),
                                      ), //bullet text
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(_observationReport[index]["lab4"],
                                          style: size12Regular(
                                              textColor: secondaryTextColor)),
                                      SizedBox(
                                        width: 13.w,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\u2022",
                                        style: size12Bold(
                                            textColor: primaryTextColor),
                                      ), //bullet text
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(_observationReport[index]["lab5"],
                                          style: size12Regular(
                                              textColor: secondaryTextColor)),
                                      SizedBox(
                                        width: 13.w,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('View',
                                      style: size12Medium(
                                          textColor: secondaryColor)),
                                  Text('View',
                                      style: size12Medium(
                                          textColor: secondaryColor)),
                                  Text('View',
                                      style: size12Medium(
                                          textColor: secondaryColor)),
                                  Text('View',
                                      style: size12Medium(
                                          textColor: secondaryColor)),
                                  Text('View',
                                      style: size12Medium(
                                          textColor: secondaryColor)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]);
                }),
          )),
    );
  }
}
