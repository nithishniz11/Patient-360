import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:get/get.dart';
import '../utils/strings.dart';
import '../utils/text_style.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

class MyClaimDataA extends StatelessWidget {
  MyClaimDataA({Key? key}) : super(key: key);
  dynamic arg = Get.arguments;

  @override
  Widget build(BuildContext context) {
    String userName = arg[0];
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(screenName: Strings.myClaims, showBackButton: true,showHomeIcon: true,)),
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
                      Text(
                        "4651681652-GH75",
                        style: size12Bold(),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  Text(
                    "Colorado Hospital, Illinois",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  SizedBox(height: 3.h,),
                  Row(
                    children: [
                      Text(
                        userName,
                        style: size12Bold(),
                      ),
                      Text(
                        " (Self)",
                        style: size12Regular(textColor: secondaryTextColor),
                      )
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  const Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "United health care",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  SizedBox(height: 3.h,),
                  Text(
                    "In-network coverage",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  SizedBox(height: 3.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Feb 18, 2023",
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
                  SizedBox(height: 3.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mar 02, 2023",
                            style: size14Bold(),
                          ),
                          SizedBox(height: 3.h,),
                          Text(
                            "Claim Registered",
                            style:
                                size12Regular(textColor: secondaryTextColor),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.sp, horizontal: 6.sp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: orangeAccentColor),
                        child: Text(
                          "Processing",
                          style: size12Regular(
                              textColor: orangeColor),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Endoscopic laser therapy",
                    style: size14Medium(textColor: secondaryTextColor),
                  ),
                  SizedBox(height: 3.h,),
                  Text(
                    "Type of service",
                    style: size12Regular(textColor: secondaryTextColor),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Dr. Robert James",
                    style: size14Medium(textColor: secondaryTextColor),
                  ),
                  SizedBox(height: 3.h,),
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
                        "\$5,600.00",
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
                          SizedBox(height: 3.h,),
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
                          SizedBox(height: 3.h,),
                          Row(
                            children: [
                              Text(
                                "\u2022",
                                style:
                                    size12Bold(textColor: Colors.deepOrange),
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
                            "\$4,480.00",
                            style: size12Regular(),
                          ),
                          SizedBox(height: 3.h,),
                          Text(
                            "\$280.0",
                            style: size12Regular(),
                          ),
                          SizedBox(height: 3.h,),
                          Text(
                            "\$840.0",
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
                      child: Image.asset(AppImages.dataA)),


                ],
              ),
            ),
          ),
          SizedBox(height: 50.h,),
          Column(children: [
            Text("Need help?",style: size12Regular(textColor: secondaryTextColor),),
            Text("Please contact us in the below contact numbers",style: size12Regular(textColor: secondaryTextColor),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("(+1) 987-654-3210",style: size12Regular(textColor: secondaryColor),),
                Text("(+1) 987-654-3210",style: size12Regular(textColor: secondaryColor),),

              ],
            )
          ],)
        ],
      ),
    );
  }
}
