import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/DiagnosisDetailsModel.dart';

import '../utils/colors.dart';
import '../utils/routes/routes_strings.dart';
import '../utils/text_style.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

class MedicationSearch extends StatelessWidget {
  dynamic search = Get.arguments;

  MedicationSearch({Key? key}) : super(key: key);
  List se = [
    {
      "name": "Diabetes Type II",
      "si": "Dr. Robert James",
      "time": "Mar 30, 2023"
    },
    {"name": "Fibrosis Uterus", "si": "Dr. Wilson", "time": "Mar 27, 2023"},
    {"name": "Diarrhea", "si": "Dr. Marvin McKinney", "time": "Mar 24, 2023"},
    {"name": "Anaemia", "si": "Dr. Brooklyn Simmons", "time": "Mar 20, 2023"},
    {"name": "Fibrosis Uterus", "si": "Dr. Wilson", "time": "Mar 27, 2023"},
  ];
  final List<DiagnosisDetailsModel> _data = [];

  void _update(String searchVal) {
    for (var medDetail in search[1]) {
      if (medDetail.title!.toLowerCase()!.contains(searchVal.toLowerCase())) {
        // _data.clear();
        _data.add(medDetail);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _update(search[0].toString());
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: "Medication",
            showBackButton: true,
            showHomeIcon: false,
          )),
      body: _data.isNotEmpty
          ? ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, bottom: 20.h, top: 20.h),
              children: [
                ListView.builder(
                    itemCount: _data!.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (
                      BuildContext build,
                      int index,
                    ) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(RoutesConstants.medicationDetailsScreen,
                              arguments: [_data![index]]);
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 15.h),
                              child: Card(
                                elevation: 0,
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  // side: const BorderSide(
                                  //   color: Colors.blue,
                                  // ),
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                // height: 115.h,

                                // gradient: const LinearGradient(
                                //     begin: Alignment.topLeft,
                                //     end: Alignment.bottomRight,
                                //    // colors: <Color>[primaryColor, secondaryColor])),

                                child: Padding(
                                  padding: EdgeInsets.all(17.0.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('${_data![index].title}',
                                              style: size14Bold(
                                                  textColor: secondaryColor)),
                                          const Divider(
                                            thickness: 1,
                                            color: dividerColor,
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Text('${_data![index].doctor2}',
                                              style: size12Medium(
                                                  textColor:
                                                      secondaryTextColor)),
                                          Text('${_data![index].lasTreated}',
                                              style: size12Medium(
                                                  textColor:
                                                      secondaryTextColor))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // SizedBox(
                              //   height: 5.h,
                              // ),
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            )
          : Center(
              child: Text(
                'No Medication Available',
                style: size18Bold(),
              ),
            ),
    );
  }
}
