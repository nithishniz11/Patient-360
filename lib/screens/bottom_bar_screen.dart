import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:patient_360/controller/bottom_navigation_bar_controller.dart';
import 'package:patient_360/screens/home_screen.dart';
import 'package:patient_360/screens/medication_screen.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/text_style.dart';
import 'package:patient_360/widgets/my_profile_widgets/my_profile.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key}) : super(key: key);

  var dbHelper;

  // final List<Widget> _widgetOptions = <Widget>[
  //   const Text('Home Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   const Text('Prescription Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   const Text('Profile Page',
  //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  // ];

  BottomBarController bottomBarController =
      Get.put(BottomBarController(), permanent: false);




  buildBottomNavigationMenu(context, bottomBarController) {
    return Obx(
      () => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              onTap: bottomBarController.changeTabIndex,
              currentIndex: bottomBarController.tabIndex.value,
              iconSize: 16.sp,
              selectedLabelStyle: size10Bold(textColor: secondaryColor),
              unselectedLabelStyle:
                  size10Regular(textColor: secondaryTextColor),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.homeIcon),
                  label: ('Home'),
                  activeIcon: SvgPicture.asset(AppIcons.homeSelectedIcon),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.prescriptionIcon),
                  label: ('Medications'),
                  activeIcon:
                      SvgPicture.asset(AppIcons.prescriptionSelectedIcon),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.profileIcon),
                  label: ('Profile'),
                  activeIcon: SvgPicture.asset(AppIcons.profileSelectedIcon),
                ),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackGroundColor,
        body: Obx(
          () => IndexedStack(
            index: bottomBarController.tabIndex.value,
            children: [
              HomeScreen(),
              MedicationScreen(),
              MyProfileScreen(),
            ],
          ),
        ),
        bottomNavigationBar:
            buildBottomNavigationMenu(context, bottomBarController));
  }
}
