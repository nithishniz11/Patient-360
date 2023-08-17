import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';
import '../utils/text_style.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

class MyClaimDataC extends StatelessWidget {
  const MyClaimDataC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: Strings.myClaims,
            showBackButton: true,
            showHomeIcon: true,
          )),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(20.sp),
        physics: const ScrollPhysics(),
        children: [
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Claim id : ",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        "68146523652-YT",
                        style: size12Bold(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "Sevier Valley Hospital, Richfield",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Smith Jr",
                        style: size12Bold(),
                      ),
                      Text(
                        " (Son)",
                        style: size12Regular(textColor: secondaryTextColor),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Aetna health care",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "In-network coverage",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sep 7, 2022",
                        style: size14Bold(),
                      ),
                      SizedBox(height: 3.h,),
                      Text(
                        "Date of Service",
                        style:
                        size12Regular(textColor: secondaryTextColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sep 22, 2022",
                            style: size14Bold(),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "Policy claimed",
                            style: size12Regular(textColor: secondaryTextColor),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.sp, horizontal: 6.sp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: greenAccentColor),
                        child: Text(
                          "Completed",
                          style: size12Regular(
                              textColor: greenColor),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Surgery for sinuses and remnants",
                    style: size14Medium(textColor: secondaryTextColor),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "Type of service",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Dr. Marvin McKenny",
                    style: size14Medium(textColor: secondaryTextColor),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "Primary care provider",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Billed charges",
                        style: size14Medium(textColor: secondaryTextColor),
                      ),
                      Text(
                        "\$1,450.00",
                        style: size14Bold(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "\u2022",
                                style: size12Bold(textColor: Colors.blue),
                              ), //bullet text
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("Your plan paid 80%",
                                  style: size12Regular()),
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "\u2022",
                                style: size12Bold(textColor: Colors.purple),
                              ), //bullet text
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("Write off 5%", style: size12Regular()),
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "\u2022",
                                style: size12Bold(textColor: Colors.deepOrange),
                              ), //bullet text
                              SizedBox(
                                width: 10.w,
                              ),
                              Text("You paid 15%", style: size12Regular()),
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$1.160.00",
                            style: size12Regular(),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "\$73.0",
                            style: size12Regular(),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            "\$217.0",
                            style: size12Regular(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Image.asset(AppImages.dataC)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Column(
            children: [
              Text(
                "Need help?",
                style: size12Regular(textColor: secondaryTextColor),
              ),
              Text(
                "Please contact us in the below contact numbers",
                style: size12Regular(textColor: secondaryTextColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "(+1) 987-654-3210",
                    style: size12Regular(textColor: secondaryColor),
                  ),
                  Text(
                    "(+1) 987-654-3210",
                    style: size12Regular(textColor: secondaryColor),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
