import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/register_controller.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

import '../utils/colors.dart';
import '../utils/text_style.dart';

class RegisterUserScreen extends StatelessWidget {
  RegisterUserScreen({Key? key}) : super(key: key);

  RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    TextEditingController medicalId = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: const CommonAppBar(
          screenName: "Registration",
          showBackButton: true,
          showHomeIcon: false,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(
            left: 20.sp, right: 20.sp, bottom: 20.sp, top: 20.sp),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1, color: borderColor, style: BorderStyle.solid)),
            child: TextField(
              controller: medicalId,
              onSubmitted: (value) async {
                await registerController.verifyUserDetails(medicalId.text);
              },
              keyboardType: TextInputType.text,
              style: size14Regular(),
              decoration: InputDecoration(
                  hintText: 'Enter medical records number or unique patient id',
                  hintStyle: size14Regular(textColor: Colors.grey),
                  contentPadding: EdgeInsets.all(15.sp),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(25),
                        topStart: Radius.circular(25),
                      ),
                    ),
                    builder: (context) => Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.sp, vertical: 20.sp),
                          child: Wrap(
                            children: [
                              Divider(
                                thickness: 3,
                                color: dividerColor,
                                indent: 150.sp,
                                endIndent: 150.sp,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Customer Care",
                                    style: size14Bold(),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                              child: Container(
                                                  height: 80.h,
                                                  width: 80.w,
                                                  color: Colors.grey.shade200,
                                                  child: Image.asset(
                                                      AppImages.whatsApp))),
                                          Text(
                                            "WhatsApp",
                                            style: size12Medium(
                                                textColor: secondaryColor),
                                          ),
                                          Text(
                                            "Support",
                                            style: size12Medium(
                                                textColor: secondaryColor),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                              child: Container(
                                                  height: 80.h,
                                                  width: 80.w,
                                                  color: Colors.grey.shade200,
                                                  child: Image.asset(
                                                      AppImages.msg))),
                                          Text(
                                            "Chat",
                                            style: size12Medium(
                                                textColor: secondaryColor),
                                          ),
                                          Text(
                                            "Support",
                                            style: size12Medium(
                                                textColor: secondaryColor),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 34.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                              child: Container(
                                                  height: 80.h,
                                                  width: 80.w,
                                                  color: Colors.grey.shade200,
                                                  child: Image.asset(
                                                      AppImages.headPhone))),
                                          Text(
                                            "Call",
                                            style: size12Medium(
                                                textColor: secondaryColor),
                                          ),
                                          Text(
                                            "Support",
                                            style: size12Medium(
                                                textColor: secondaryColor),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                              child: Container(
                                                  height: 80.h,
                                                  width: 80.w,
                                                  color: Colors.grey.shade200,
                                                  child: Image.asset(
                                                      AppImages.mail))),
                                          Text(
                                            "Mail",
                                            style: size12Medium(
                                                textColor: secondaryColor),
                                          ),
                                          Text(
                                            "Support",
                                            style: size12Medium(
                                                textColor: secondaryColor),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ));
              },
              child: Text(
                "Don't have medical records number or unique patient id?",
                style: size14Regular(textColor: secondaryColor),
              )),
          SizedBox(
            height: 500.h,
          ),
          GestureDetector(
            onTap: () async {
              await registerController.verifyUserDetails(medicalId.text);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: primaryColor,
              ),
              child: Center(
                child: Text(
                  'SUBMIT',
                  style: size12Bold(textColor: whiteColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
