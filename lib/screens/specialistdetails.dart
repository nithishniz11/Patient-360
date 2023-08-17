import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/text_style.dart';


class SpecialistBio extends StatelessWidget {
  const SpecialistBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            title: Text("Dr. Robert James", style: size16Bold()),
            subtitle: Text("Gynaecologist",
                style: size14Medium(textColor: secondaryTextColor)),
          ),
        ),
        // const ProfilePic(),
        //Image.network("https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg", height: 10,width: 10,),
        const Divider(
          height: 0.5,
          indent: 17,
          endIndent: 180,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(3),
          child: ListTile(
            title: Text("Advert Health Hospital", style: size16Bold()),
            subtitle: Text("Texas",
                style: size14Medium(textColor: secondaryTextColor)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3),
          child: ListTile(
            title: Text("1024", style: size16Bold()),
            subtitle: Text("Patients treated",
                style: size14Medium(textColor: secondaryTextColor)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Text("Bio", style: size14Bold()),
        ),
        const SizedBox(
          height: 10,
        ),

        // Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Text(
            "Dr. Robert has led the hospital since its inception.It is because of his\n"
            "vision, dynamism, leadership skills, dedicated and devoted services,\n"
            "He has great surgical experience in Caesarean Sections,\n"
            "Hysterectomies and other OBG Surgeries. High Risk Pregnancies and\n"
            "Infertility and Gynaecological Oncology.",
            style: size12Medium(textColor: secondaryTextColor),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("Consulting Hours", style: size14Bold()),
        ),
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.all(13),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.circle,
                  size: 7.sp,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text("Morning", style: size12Medium()),
              const SizedBox(
                width: 100,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.circle,
                  size: 7.sp,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Text("Evening", style: size12Medium()),
            ],
          ),
        ),
        const SizedBox(
          height: 0.2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("9:00 AM - 1:00 PM",
                  style: size12Medium(textColor: secondaryTextColor)),
              const SizedBox(
                width: 65,
              ),
              Text("6:00 PM - 9:00 PM",
                  style: size12Medium(textColor: secondaryTextColor)),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("Past Appoinments", style: size14Bold()),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.circle,
                        size: 7.sp,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("Yesterday", style: size12Medium()),
                    const SizedBox(
                      width: 80,
                    ),
                    Text("Mar 30, 2023",
                        style: size12Medium(textColor: secondaryTextColor)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.circle,
                        size: 7.sp,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "A week ago",
                      style: size12Medium(),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Text("Mar 15, 2023",
                        style: size12Medium(textColor: secondaryTextColor)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.circle,
                        size: 7.sp,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("A month ago", style: size12Medium(),),
                    const SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Feb 24, 2023",
                        style: size12Medium(textColor: secondaryTextColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.circle,
                        size: 7.sp,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("A year ago", style: size12Medium(),),
                    const SizedBox(
                      width: 74,
                    ),
                    Text(
                      "Mar 15, 2022",
                        style: size12Medium(textColor: secondaryTextColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Padding(
        // padding: EdgeInsets.only(left: 25),
        // child:
        // Row(
        //     children: [
        //       Align(
        //         alignment: Alignment.centerLeft,
        //         child: Icon(
        //           Icons.circle,
        //           size: 7.sp,
        //         ),
        //       ),
        //       SizedBox(
        //         width: 8,
        //       ),
        //       Text("Yesterday"),
        //       SizedBox(
        //         width: 80,
        //       ),
        //       Text("Mar 30, 2023",
        //         style: TextStyle(
        //             fontWeight: FontWeight.w400,
        //             fontSize: 15.sp,
        //             color: Colors.black45),),
        //     ],
        //   ),),
        //     Padding(
        //       padding: EdgeInsets.only(left: 25),
        //       child:
        //       Row(
        //         children: [
        //           Align(
        //             alignment: Alignment.centerLeft,
        //             child: Icon(
        //               Icons.circle,
        //               size: 7.sp,
        //             ),
        //           ),
        //           SizedBox(
        //             width: 8,
        //           ),
        //           Text("A week ago"),
        //           SizedBox(
        //             width: 70,
        //           ),
        //           Text("Mar 15, 2023",
        //             style: TextStyle(
        //                 fontWeight: FontWeight.w400,
        //                 fontSize: 15.sp,
        //                 color: Colors.black45),),
        //         ],
        //       ),),
      ],
    );
  }
}
