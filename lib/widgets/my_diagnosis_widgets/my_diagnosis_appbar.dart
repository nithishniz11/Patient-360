import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';
import 'package:patient_360/utils/text_style.dart';

import '../../utils/colors.dart';

class CommonAppBar extends StatelessWidget {
  final String? screenName;
  final bool? showBackButton;
  final bool? showHomeIcon;

  const CommonAppBar({Key? key, this.screenName, this.showBackButton, this.showHomeIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: scaffoldBackGroundColor,
      title: Text(screenName!, style: size16Bold()),
      centerTitle: true,
      actions: showHomeIcon! ? [
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: IconButton(
            onPressed: () {
              Get.offAllNamed(RoutesConstants.homeScreen);
            },
            icon: SvgPicture.asset(
              AppIcons.appBarHomeIcon,
              color: secondaryColor,
            ),
          ),
        )
      ] : null,
      leading: showBackButton!
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blue,
              ),
              onPressed: () {
                Get.back();
              },
            )
          : null,
    );
  }
}
