import 'package:get/get.dart';
import 'package:patient_360/controller/appointment_schedule_controller.dart';
import 'package:patient_360/controller/bottom_navigation_bar_controller.dart';
import 'package:patient_360/controller/home_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppointmentScheduleController>(() => AppointmentScheduleController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<BottomBarController>(() => BottomBarController());
  }
}
