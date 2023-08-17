import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';
import '../utils/text_style.dart';
import '../widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';

class CustomerCareScreen extends StatelessWidget {
  const CustomerCareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: Strings.customerCare,
            showBackButton: true,
            showHomeIcon: false,
          )),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          children: [
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                            height: 60.h,
                            width: 60.w,
                            color: Colors.grey.shade200,
                            child: Image.asset(AppImages.whatsApp))),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'WhatsApp Support',
                          style: size14Bold(textColor: secondaryColor),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'WhatsApp support available from',
                          style: size14Regular(textColor: secondaryTextColor),
                        ),
                        Text(
                          '10:00 AM to 06:00 PM local time.',
                          style: size14Regular(textColor: secondaryTextColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                            height: 60.h,
                            width: 60.w,
                            color: Colors.grey.shade200,
                            child: Image.asset(AppImages.mail))),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Email Support',
                          style: size14Bold(textColor: secondaryColor),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Our 24/7 email support',
                          style: size14Regular(textColor: secondaryTextColor),
                        ),
                        Text(
                          'care@patient360.com',
                          style: size14Regular(textColor: secondaryTextColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                            height: 60.h,
                            width: 60.w,
                            color: Colors.grey.shade200,
                            child: Image.asset(AppImages.msg))),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Chat Support',
                          style: size14Bold(textColor: secondaryColor),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Our AI Chat Support Available 24/7',
                          style: size14Regular(textColor: secondaryTextColor),
                        ),
                        Text(
                          '',
                          style: size14Regular(textColor: secondaryTextColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Container(
                            height: 60.h,
                            width: 60.w,
                            color: Colors.grey.shade200,
                            child: Image.asset(AppImages.headPhone))),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Call Support',
                          style: size14Bold(textColor: secondaryColor),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Call Support available from',
                          style: size14Regular(textColor: secondaryTextColor),
                        ),
                        Text(
                          '10:00 AM to 06:00 PM local time.',
                          style: size14Regular(textColor: secondaryTextColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
