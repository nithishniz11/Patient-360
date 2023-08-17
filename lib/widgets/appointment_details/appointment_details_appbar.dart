import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class AppointmentDetailsAppbar extends StatelessWidget {
  const AppointmentDetailsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.sp,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.keyboard_arrow_left),
        color: secondaryColor,
        iconSize: 30.sp,
      ),
      centerTitle: true,
      title: Text(
        "Appointment Details",
        style: size20Bold(textColor: blackColor),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home_outlined),
          color: secondaryColor,
          iconSize: 30.sp,
        ),
      ],
      backgroundColor: scaffoldBackGroundColor,
    );
  }
}
