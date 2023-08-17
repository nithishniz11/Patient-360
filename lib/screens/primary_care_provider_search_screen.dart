import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/doctor_details_model.dart';
import 'package:patient_360/controller/primary_care_provider_controller.dart';

import '../utils/colors.dart';
import '../utils/routes/routes_strings.dart';
import '../utils/strings.dart';
import '../utils/text_style.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

class PrimaryCareProviderSearchScreen extends StatelessWidget {
  dynamic search = Get.arguments;

  PrimaryCareProviderSearchScreen({Key? key}) : super(key: key);

  PrimaryCareProviderController primaryCareProviderController =
      Get.put(PrimaryCareProviderController());

  final List<DoctorDetailsModel> _data = [];

  void _update(String search) {
    for (var docDetail in primaryCareProviderController.doctorList) {
      if (docDetail.docSpec!.toLowerCase().contains(search.toLowerCase()) ||
          docDetail.docName!.toLowerCase().contains(search.toLowerCase())) {
        // _data.clear();
        _data.add(docDetail);

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
            screenName: Strings.primaryCare,
            showBackButton: true,
            showHomeIcon: true,
          )),
      body: _data.isNotEmpty
          ? ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, bottom: 20.h, top: 20.h),
              children: [
                ListView.builder(
                    itemCount: _data?.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (
                      BuildContext build,
                      int index,
                    ) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(
                              RoutesConstants.primaryCareProviderDetailsScreen,
                              arguments: [_data[index]]);
                        },
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(5.sp, 8.sp, 10.sp, 8.sp),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: <Color>[
                                        primaryColor,
                                        secondaryColor
                                      ])),
                              child: ListTile(
                                leading: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r)),
                                  child: Image.network(
                                    _data[index].docImage!,
                                    height: 60.h,
                                    width: 60.h,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                title: SizedBox(
                                  height: 7.h,
                                ),
                                subtitle: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${_data[index].docName}",
                                          style:
                                              size20Bold(textColor: whiteColor),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${_data[index].docSpec}",
                                          style: size14Regular(
                                              textColor: whiteColor),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${_data[index].docType}",
                                          style: size14Regular(
                                              textColor: whiteColor),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                          child: Text(
                                            "|",
                                            style: size14Regular(
                                                textColor: whiteColor),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "Located "
                                          "${_data[index].awayFrom}",
                                          style: size14Regular(
                                              textColor: whiteColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            )
          : Center(
              child: Text(
                'No Doctors Available',
                style: size18Bold(),
              ),
            ),
    );
  }
// Widget _filteredData(){
//   return
// }
}
