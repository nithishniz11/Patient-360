import 'package:flutter/material.dart';
import 'package:patient_360/utils/colors.dart';
import 'package:patient_360/utils/strings.dart';
import 'package:patient_360/utils/text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [primaryColor, secondaryColor],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Text(
            Strings.appName,
            style: size36Bold(textColor: whiteColor),
          ),
        ),
      ),
    );
  }
}
