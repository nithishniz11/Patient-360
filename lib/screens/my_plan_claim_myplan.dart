import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/assets.dart';
import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class MyPlanClaimMyPlan extends StatelessWidget {
  const MyPlanClaimMyPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyPlanPlanCard();
  }
}

class MyPlanPlanCard extends StatelessWidget {
  const MyPlanPlanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mypp = [
      {
        "logo": AppImages.unitedHealthCare,
        "pt": "PPO",
        "pot": "Individual",
        "dedt": "\$ 1,200.00",
        "coi": "15%",
        "cop": "\$ 35",
        "ec": "Feb 23, 2023 - Feb 22, 2024",
      },
      {
        "logo": AppImages.care,
        "pt": "PPO",
        "pot": "Family",
        "dedt": "\$ 8,200.00",
        "coi": "15%",
        "cop": "\$ 58",
        "ec": "Mar 30, 2023 - Mar 29, 2024",
      },
    ];
    return ListView(
      // padding: EdgeInsets.all(20.sp),
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(6.sp, 10.sp, 6.sp, 5.sp),
          child: Text(
            "2 Plans",
            style: size14Bold(),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(6.sp, 0.sp, 6.sp, 5.sp),
          child: Divider(
            thickness: 1.sp,
            color: secondaryHeadingTextColor,
          ),
        ),
        ListView.builder(
            itemCount: mypp.length,
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
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 119.w,
                            child: Image.asset(mypp[index]["logo"]),
                          ),
                          SizedBox(
                            width: 77.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Policy Type : ",
                                    style: size12Regular(
                                        textColor: secondaryTextColor),
                                  ),
                                  Text(
                                    mypp[index]["pot"],
                                    style: size12Medium(
                                        textColor: secondaryTextColor),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Plan Type : ",
                                    style: size12Regular(
                                        textColor: secondaryTextColor),
                                  ),
                                  Text(
                                    mypp[index]["pt"],
                                    style: size12Medium(
                                        textColor: secondaryTextColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.sp,
                        color: dividerColor,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                mypp[index]["dedt"],
                                style:
                                size14Bold(textColor: secondaryTextColor),
                              ),
                              Text(
                                "Deductible",
                                style:
                                size12Medium(textColor: secondaryTextColor),
                              ),
                              Text(
                                mypp[index]["cop"],
                                style:
                                size14Bold(textColor: secondaryTextColor),
                              ),
                              Text(
                                "Co-Pay (Per physician visit)",
                                style:
                                size12Medium(textColor: secondaryTextColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 77.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                mypp[index]["coi"],
                                style:
                                size14Bold(textColor: secondaryTextColor),
                              ),
                              Text(
                                "Co-Insurance",
                                style: size12Regular(
                                    textColor: secondaryTextColor),
                              ),
                              Text(
                                "",
                                style: size12Regular(
                                    textColor: secondaryTextColor),
                              ),
                              Text(
                                "",
                                style: size12Regular(
                                    textColor: secondaryTextColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.sp,
                        color: dividerColor,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                mypp[index]["ec"],
                                style:
                                size14Bold(textColor: secondaryTextColor),
                              ),
                              Text(
                                "Coverage Period",
                                style:
                                size12Medium(textColor: secondaryTextColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}

