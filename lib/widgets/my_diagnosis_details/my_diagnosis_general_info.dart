import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/text_style.dart';

class MyDiagnosisGeneralInfo extends StatefulWidget {
  final String? recentOld;
  final String? name;
  const MyDiagnosisGeneralInfo({Key? key, this.name, this.recentOld})
      : super(key: key);

  @override
  State<MyDiagnosisGeneralInfo> createState() => _MyDiagnosisGeneralInfoState();
}

class _MyDiagnosisGeneralInfoState extends State<MyDiagnosisGeneralInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.recentOld.toString(),
              style: size12Medium(),
            ),
            Text(" / ",
                style:
                    size12Medium()),
            Text(widget.name.toString(),
                style:
                    size12Bold()),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(widget.name.toString(),
            style: size14Bold()),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
