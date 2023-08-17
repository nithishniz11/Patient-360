import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:patient_360/utils/app_theme.dart';
import 'package:patient_360/utils/routes/navigation_pages.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';


import 'package:patient_360/utils/strings.dart';


import 'binding/splash_screen_binding.dart';
import 'utils/preferences/preference_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreference().initialAppPreference();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 884),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: Strings.appName,
            theme: AppTheme.lightTheme,
            initialRoute: RoutesConstants.splashScreen,
            initialBinding: SplashScreenBinding(),
            getPages: GetPages.getPages,
            // home: MyMedicationTabletDetail(),

          );
        });
  }
}
