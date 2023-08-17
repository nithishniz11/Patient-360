import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_360/Model/UserDetailsModel.dart';
import 'package:patient_360/controller/home_controller.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/text_style.dart';
import 'package:get/get.dart';
import 'package:patient_360/widgets/my_diagnosis_widgets/my_diagnosis_appbar.dart';
import 'package:patient_360/widgets/my_profile_widgets/my_profile_logout.dart';

class MyProfileScreen extends StatelessWidget {
  MyProfileScreen({Key? key}) : super(key: key);

  HomeController homeCnt = Get.put(HomeController());

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 60.r,
                  backgroundColor: profileBorderColor,
                  child: CircleAvatar(
                    radius: 58.r,
                    backgroundColor: whiteColor,
                    child: Obx(
                      () => CircleAvatar(
                        radius: 51.5.r,
                        backgroundImage:
                            NetworkImage('${homeCnt.userInfo.value.userImage}'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0.sp,
                  right: 0.sp,
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 15.r,
                      backgroundColor: profileCameraBorderColor,
                      child: CircleAvatar(
                        radius: 13.r,
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 18.sp,
                          color: secondaryTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Obx(
              () => Text(
                '${homeCnt.userInfo.value.userName}',
                style: size18Bold(textColor: secondaryTextColor),
              ),
            ),
            Obx(
              () => Text(
                "MRN: ${homeCnt.userInfo.value.mRN}",
                style: size14Regular(textColor: secondaryTextColor),
              ),
            ),
            _info(homeCnt.userInfo.value),
            _contactInfo(homeCnt.userInfo.value),
            const LogButton(),
          ],
        ),
      ),
    );
  }

  Widget _info(UserDetailsModel user) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
              child: Text("Biological Information",
                  textAlign: TextAlign.left,
                  style: size14Bold(textColor: blackColor)),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[primaryColor, secondaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              height: 1,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Date of Birth",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                      Text(
                        "Age",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                      Text(
                        "Gender",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                      Text(
                        "Height",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                      Text(
                        "Weight",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '${user.dob}',
                        style: size12Regular(textColor: blackColor),
                      ),
                      Text(
                        '${user.age}',
                        style: size12Regular(textColor: blackColor),
                      ),
                      Text(
                        '${user.gender}',
                        style: size12Regular(textColor: blackColor),
                      ),
                      Text(
                        '${user.height}',
                        style: size12Regular(textColor: blackColor),
                      ),
                      Text(
                        '${user.weight}',
                        style: size12Regular(textColor: blackColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactInfo(UserDetailsModel user) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
              child: Text("Contact Information",
                  textAlign: TextAlign.left,
                  style: size14Bold(textColor: blackColor)),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[primaryColor, secondaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                      Text(
                        "Phone",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                      Text(
                        "Address",
                        style: size12Regular(textColor: secondaryTextColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.sp, vertical: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${user.contactInfo?.email}",
                        style: size12Regular(textColor: blackColor),
                      ),
                      Text(
                        "${user.contactInfo?.phone}",
                        style: size12Regular(textColor: blackColor),
                      ),
                      Text(
                        "${user.contactInfo?.address}",
                        style: size12Regular(textColor: blackColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
