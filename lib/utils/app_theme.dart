import 'package:flutter/material.dart';
import 'package:patient_360/utils/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: scaffoldBackGroundColor,
      // systemOverlayStyle: SystemUiOverlayStyle(
      //   statusBarColor: scaffoldBackGroundColor,
      //   statusBarIconBrightness: Brightness.dark,
      //   statusBarBrightness: Brightness.light,
      //   systemNavigationBarColor: scaffoldBackGroundColor,
      // ),
    ),
    primaryColor: scaffoldBackGroundColor,
  );
}
