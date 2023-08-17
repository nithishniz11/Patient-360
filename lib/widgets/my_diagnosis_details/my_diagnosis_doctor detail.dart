import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/Model/DiagnosisDetailsModel.dart';
import 'package:patient_360/utils/text_style.dart';

import '../../utils/colors.dart';

class MyDiagnosisDoctorDetail extends StatefulWidget {
  MyDiagnosisDoctorDetail({Key? key, required this.diagnosisDetail})
      : super(key: key);
  DiagnosisDetailsModel diagnosisDetail;

  @override
  State<MyDiagnosisDoctorDetail> createState() =>
      _MyDiagnosisDoctorDetailState();
}

class _MyDiagnosisDoctorDetailState extends State<MyDiagnosisDoctorDetail> {
  @override
  Widget build(BuildContext context) {
    List doctorDetail = [
      {
        "data1": "Location",
        "data2": "${widget.diagnosisDetail.location}",
      },
      {
        "data1": "Last treated",
        "data2": "${widget.diagnosisDetail.lasTreated}",
      },
      {
        "data1": "Attending Physician",
        "data2": "${widget.diagnosisDetail.doctor2}",
      },
      {
        "data1": "Speciality",
        "data2": "${widget.diagnosisDetail.doctor2Speciality}"
      }
    ];
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
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: GridView.builder(
                  itemCount: doctorDetail.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.sp,
                      mainAxisSpacing: 5.sp,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 5.7)),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          doctorDetail[index]["data2"],
                          overflow: TextOverflow.visible,
                          style: size14Bold(textColor: primaryTextColor),
                        ),
                        Text(
                          doctorDetail[index]["data1"],
                          style: size12Regular(textColor: secondaryTextColor),
                        )
                      ],
                    );
                  },
                ),
              ),
            )));
  }
}
