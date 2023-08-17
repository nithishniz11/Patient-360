import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flip_card/flip_card.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/utils/assets.dart';
import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class MyPlanHealthCard extends StatelessWidget {
  MyPlanHealthCard({Key? key, required this.controller}) : super(key: key);
  HomeController controller;

  @override
  Widget build(BuildContext context) {
    List myph = [
      {
        "logo": AppImages.unitedHealthCare,
        "pt": "PPO",
        "mid": "462151 - C",
        "m": "${controller.userInfo.value.userName}",
        "gno": "32-47-22",
        "pcp": "Dr.  Robert Jam",
        "cno": "(+1) 934-231-6780",
        "cpcp": "\$ 25",
        "spc": "\$ 300",
        "eer": "\$ 150",
        "rxco": "\$ 30",
        "web": "myuhc.com",
        "phn": "888-555-4444",
        "mc": "PO Box 74080, Atlanta, GA",
        "p": "877-842-3210 or UHCprovider.com",
        "prmst": "888-290-5416",
        "pc": "PO Box 650540 Dallas, TX",
      },
      {
        "logo": AppImages.care,
        "pt": "PPO",
        "mid": "583262 - B",
        "m": "${controller.userInfo.value.userName}",
        "gno": "52-62-35",
        "pcp": "Dr.  Robert Jam",
        "cno": "(+1) 987-654-3210",
        "cpcp": "\$ 18",
        "spc": "\$ 250",
        "eer": "\$ 122",
        "rxco": "\$ 17",
        "web": "lahc.com",
        "phn": "888-333-2222",
        "mc": "PO Box 96040, Los Angeles, CA",
        "p": "854-853-3798 or LAprovider.com",
        "prmst": "888-470-7638",
        "pc": "PO Box 870760, Vegas, NV",
      },
    ];
    return ListView.separated(
      padding: EdgeInsets.only(top: 20.sp),
      itemCount: myph.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (
          BuildContext build,
          int index,
          ) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.sp),
          ),
          child: FlipCard(
            front: Container(
              padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 20.sp),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 26.h,width: 119.w, child: Image.asset(myph[index]["logo"])),
                      SizedBox(
                        width: 65.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Plan Type : ",
                                style:
                                size12Regular(textColor: secondaryTextColor),
                              ),
                              Text(
                                myph[index]["pt"],
                                style:
                                size12Medium(textColor: secondaryTextColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.sp,
                    color: secondaryHeadingTextColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.sp),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Member Id",
                                style: size12Regular(textColor: secondaryTextColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Member",
                                style: size12Regular(textColor: secondaryTextColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Group No",
                                style: size12Regular(textColor: secondaryTextColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "PCP Name",
                                style: size12Regular(textColor: secondaryTextColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Contact No",
                                style: size12Regular(textColor: secondaryTextColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["mid"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["m"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["gno"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["pcp"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["cno"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              "Office",
                              style: size12Regular(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              "ER",
                              style: size12Regular(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              "UrgCare",
                              style: size12Regular(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              "Speciality",
                              style: size12Regular(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              "",
                              style: size12Regular(textColor: secondaryTextColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["cpcp"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["spc"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["eer"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["rxco"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              "",
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.sp),
                        child: Text(
                          "Flip Back",
                          style: size12Bold(textColor: secondaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            back: Container(
              padding: EdgeInsets.symmetric(vertical: 0.sp, horizontal: 20.sp),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Web",
                                style: size12Bold(textColor: secondaryColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Phone",
                                style: size12Bold(textColor: secondaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 62.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["web"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["phn"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.sp,
                    color: secondaryColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Providers",
                                style: size12Bold(textColor: secondaryColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Medical Claims",
                                style: size12Bold(textColor: secondaryColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Pharmacists",
                                style: size12Bold(textColor: secondaryColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.sp),
                              child: Text(
                                "Pharmacy Claims",
                                style: size12Bold(textColor: secondaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["p"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["mc"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["prmst"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.sp),
                            child: Text(
                              myph[index]["pc"],
                              style: size12Medium(textColor: secondaryTextColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.sp),
                        child: Text(
                          "Flip Front",
                          style: size12Bold(textColor: secondaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: 20.sp,
      ),
    );
  }
}