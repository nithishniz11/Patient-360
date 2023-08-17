import 'package:csv/csv.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';

import '../../utils/colors.dart';
import '../../utils/strings.dart';
import '../../utils/text_style.dart';

class OldDiagnosis extends StatefulWidget {
  OldDiagnosis({Key? key, required this.controller}) : super(key: key);
  HomeController controller;

  @override
  State<OldDiagnosis> createState() => _OldDiagnosisState();
}

class _OldDiagnosisState extends State<OldDiagnosis> {
  final List _oldDiagnosis = [
    {"name": "Anaemia", "time": "Dec 31, 2022 1:30 PM"},
    {"name": "Diabetes Type II", "time": "Feb 29, 2023 2:40 PM"},

  ];

  String _search ="Anaemia";
  List? _data;
  void _update(String _search){
    _data = _oldDiagnosis.where((element) => _search == (element["name"].toString())).toList();
     if (kDebugMode) {
       print(_data?.length);
     }
  }
  Future<List<List<dynamic>>> process() async {
    var result =
    await DefaultAssetBundle.of(context).load("assets/csv/csvjson.csv");
    return const CsvToListConverter().convert(result.toString(), eol: "\n");
  }


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _update(_search);
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: [
        Text(
          Strings.oldDiagnosis,
          style: size14Bold(),
        ),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
            itemCount: widget.controller.oldDiagnosisDetailsList.length,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesConstants.myDiagnosisPageDetailsScreen,
                      arguments: [
                        widget.controller.oldDiagnosisDetailsList[index],
                        Strings.oldDiagnosis,
                      ]);
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child:
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${widget.controller.oldDiagnosisDetailsList[index].title}",
                              style: size14Bold(textColor: secondaryColor)),
                          const Divider(thickness: 1),
                          Text(
                            Strings.lastTreated,
                            style: size14Regular(textColor: secondaryTextColor),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text("${widget.controller.oldDiagnosisDetailsList[index].lasTreated}",
                              style:
                                  size12Medium(textColor: secondaryTextColor))
                        ],
                      ),
                    ),
                  ),
                ),
              );
            })
      ],
    );
  }
}
