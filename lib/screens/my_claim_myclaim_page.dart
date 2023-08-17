import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';
import 'package:patient_360/utils/text_style.dart';

class MyPlanClaimMyClaimPage extends StatelessWidget {
  MyPlanClaimMyClaimPage({Key? key, required this.controller})
      : super(key: key);
  HomeController controller;

  @override
  Widget build(BuildContext context) {
    List claims = [
      {
        "claimid": "4651681652-GH75",
        "loc": "Colorado Hospital, Illinois",
        "name": "${controller.userInfo.value.userName}",
        "relation": "Self",
        "status": "Processing",
        "amount": "Total \$5,600.00",
        "color": orangeAccentColor,
        "textcolor": orangeColor,
        "navigation": RoutesConstants.myClaimDataA
      },
      {
        "claimid": "98564Y5267588",
        "loc": "Lionspril Hospital, Idaho",
        "name": "Mr. Johnson Smith",
        "relation": "Spouse",
        "status": "Completed",
        "amount": "Total \$6,750.00",
        "color": greenAccentColor,
        "textcolor": greenColor,
        "navigation": RoutesConstants.myClaimDataB
      },
      {
        "claimid": "68146523625-YT",
        "loc": "Sevier Valley Hospital, Richfield",
        "name": "Smith Jr",
        "relation": "Son",
        "status": "Completed",
        "amount": "Total \$1,450.00 ",
        "color": greenAccentColor,
        "textcolor": greenColor,
        "navigation": RoutesConstants.myClaimDataC
      },
      {
        "claimid": "4242252634-NK2",
        "loc": "Jordon Valley Medical Centre, West Jordon",
        "name": "${controller.userInfo.value.userName}",
        "relation": "Self",
        "status": "Completed",
        "amount": "Total \$8,550.00 ",
        "color": greenAccentColor,
        "textcolor": greenColor,
        "navigation": RoutesConstants.myClaimDataD
      }
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        Text(
          "4 Claims",
          style: size14Bold(),
        ),
        const Divider(
          thickness: 1,
          color: dividerColor,
          indent: 0,
          endIndent: 0,
        ),
        SizedBox(
          height: 10.h,
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: claims.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(claims[index]["navigation"],
                      arguments: [controller.userInfo.value.userName]);
                },
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
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
                              style: size12Regular(),
                            ),
                            Text(
                              claims[index]["claimid"],
                              style: size12Bold(),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          claims[index]["loc"],
                          style: size12Regular(),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            Text(
                              claims[index]["name"],
                              style: size12Bold(),
                            ),
                            Text(
                              "${"  (" + claims[index]["relation"]})",
                              style: size12Regular(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 1.sp, horizontal: 6.sp),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  color: claims[index]["color"]),
                              child: Text(
                                claims[index]["status"],
                                style: size12Regular(
                                    textColor: claims[index]["textcolor"]),
                              ),
                            ),
                            Text(
                              claims[index]["amount"],
                              style: size14Bold(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })
      ],
    );
  }
}
