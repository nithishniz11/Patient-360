import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/UserDetailsModel.dart';
import 'package:patient_360/controller/register_controller.dart';
import 'package:patient_360/utils/text_style.dart';
import 'package:patient_360/widgets/comHelper.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

import '../utils/colors.dart';
import '../utils/routes/routes_strings.dart';

class RegistrationDetailScreen extends StatelessWidget {
  dynamic userDetails = Get.arguments;

  RegistrationDetailScreen({Key? key}) : super(key: key);

  RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    UserDetailsModel userDetailsModel = userDetails[0];
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.h),
          child: const CommonAppBar(
            screenName: "Registration",
            showBackButton: true,
            showHomeIcon: false,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: 20.sp, right: 20.sp, bottom: 20.sp, top: 20.h),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20.sp, top: 10.sp),
                        height: 40.h,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[primaryColor, secondaryColor])),
                        child: Text(
                          "Details registered in hospital",
                          style: size14Medium(textColor: whiteColor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.sp,
                            left: 20.sp,
                            right: 20.sp,
                            bottom: 20.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${userDetailsModel.userName}",
                              style: size14Bold(),
                            ),
                            Row(
                              children: [
                                Text(
                                  "MRN : ",
                                  style: size12Regular(),
                                ),
                                Text(
                                  "${userDetailsModel.mRN}",
                                  style: size12Regular(),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: size12Regular(),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "Phone",
                                      style: size12Regular(),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "Address",
                                      style: size12Regular(),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   width: 50.w,
                                // ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maskEmail(userDetailsModel
                                              .contactInfo!.email!)
                                          .toString(),
                                      style: size12Bold(),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      maskPhone(userDetailsModel
                                          .contactInfo!.phone!)
                                          .toString(),
                                      // "${userDetailsModel.contactInfo!.phone}",
                                      style: size12Bold(),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "${userDetailsModel.contactInfo!.address}",
                                      style: size12Bold(),
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: false,
                          context: context,
                          backgroundColor: whiteColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(25),
                              topStart: Radius.circular(25),
                            ),
                          ),
                          builder: (context) => Container(
                              padding: const EdgeInsetsDirectional.only(
                                start: 20,
                                end: 20,
                                bottom: 20,
                                top: 8,
                              ),
                              child: Wrap(
                                children: [
                                  Column(children: [
                                    const Divider(
                                        thickness: 4,
                                        indent: 100,
                                        endIndent: 100),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: primaryColor,
                                      size: 60.sp,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                        "Thank you for confirming the details.",
                                        style: size14Bold()),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      "We will send you a confirmation email \nto login in to your app once your medical \nrepresentative approves your request.",
                                      style: size14Regular(),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(
                                      height: 100.h,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        await registerController
                                            .requestVerification(
                                                userDetailsModel);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.w, vertical: 15.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: primaryColor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'EXIT',
                                            style: size12Bold(
                                                textColor: whiteColor),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              )));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          'REQUEST REGISTRATION',
                          style: size12Bold(textColor: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Having an account already?",
                        style: size12Regular(),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(RoutesConstants.loginScreen);
                        },
                        child: Text(
                          "Login",
                          style: size12Regular(textColor: secondaryColor),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
