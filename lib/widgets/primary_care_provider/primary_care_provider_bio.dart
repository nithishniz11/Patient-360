import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/colors.dart';

import '../../utils/text_style.dart';

class PrimaryCareProviderBio extends StatefulWidget {
  const PrimaryCareProviderBio({Key? key}) : super(key: key);

  @override
  State<PrimaryCareProviderBio> createState() => _PrimaryCareProviderBioState();
}

class _PrimaryCareProviderBioState extends State<PrimaryCareProviderBio> {



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Dr. Robert James",
                  style: size14Bold(),
                ),
                Text(
                  "Gynaecologist",
                  style: size12Regular(),
                ),
                SizedBox(height: 10.h),
                Container(width: 140.w, height: 1.h, color: dividerColor),
                SizedBox(height: 10.h),
                Text(
                  "Advert Health Hospital",
                  style: size14Bold(),
                ),
                Text(
                  "Texas",
                  style: size12Regular(),
                ),
                SizedBox(height: 15.h),
                Text(
                  "1024",
                  style: size14Bold(),
                ),
                Text(
                  "Patients treated",
                  style: size12Regular(),
                )
              ],
            ),
            SizedBox(
              width: 65.w,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
                  height: 200.h,
                  width: 125.w,
                )),
          ],
        ),
        SizedBox(height: 15.h),
        Text(
          "Bio",
          style: size14Bold(),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Dr. Robert has led the hospital since its inception. It is because of his vision, dynamism, leadership skills, dedicated and devoted services. He has great surgical experience in Caesarean Sections, Hysterectomies and other OBG Surgeries. High Risk Pregnancies and  Infertility and Gynaecological Oncology.",
          style: size12Regular(),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Consulting Hours",
          style: size14Bold(),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "\u2022",
                      style: size12Bold(),
                    ), //bullet text
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Morning",
                      style: size12Medium(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text("9:00 AM - 1:00 AM", style: size12Regular()),
                )
              ],
            ),
            SizedBox(
              width: 50.w,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "\u2022",
                      style: size12Bold(),
                    ), //bullet text
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Morning",
                      style: size12Medium(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Text("6:00 PM - 9:00 PM", style: size12Regular()),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Past Appoinments",
          style: size14Bold(),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "\u2022",
                      style: size12Bold(),
                    ), //bullet text
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Yesterday",
                      style: size12Medium(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\u2022",
                      style: size12Bold(),
                    ), //bullet text
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "A week ago",
                      style: size12Medium(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\u2022",
                      style: size12Bold(),
                    ), //bullet text
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "A month ago",
                      style: size12Medium(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\u2022",
                      style: size12Bold(),
                    ), //bullet text
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "A year ago",
                      style: size12Medium(),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 50.w,
            ),
            Column(
              children: [
                Text(
                  "Mar 30, 2023",
                  style: size12Regular(),
                ),
                Text(
                  "Mar 15, 2023",
                  style: size12Regular(),
                ),
                Text(
                  "Feb 24, 2023",
                  style: size12Regular(),
                ),
                Text(
                  "Mar 15, 2022",
                  style: size12Regular(),
                ),
              ],
            ),
          ],
        ),

        // SizedBox(
        //   height: 135.h,
        // ),
        // Spacer(),

      ],
    );
  }
}
