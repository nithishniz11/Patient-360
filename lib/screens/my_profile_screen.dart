import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'package:patient_360/widgets/my_profile_widgets/my_profile.dart';

import '../../utils/colors.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.sp),
          child: const CommonAppBar(
            screenName: "My Profile",
            showHomeIcon: false,
            showBackButton: false,
          )),
      body: SingleChildScrollView(child: MyProfileScreen()),
    );
  }
}
