import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/widgets/my_profile_widgets/my_profile.dart';

import '../../utils/colors.dart';
import '../../utils/text_style.dart';

class ProfileApbar extends StatelessWidget {
  const ProfileApbar({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.sp,
        centerTitle: true,
        title: Text(
          "My Profile",
          style: size20Bold(textColor: blackColor),
        ),
        backgroundColor: scaffoldBackGroundColor,
      ),
      body: MyProfileScreen(),
    );
  }
}
