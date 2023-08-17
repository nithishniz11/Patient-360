import 'package:get/get.dart';
import 'package:patient_360/controller/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
