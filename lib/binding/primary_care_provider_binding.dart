import 'package:get/get.dart';
import 'package:patient_360/controller/appointment_schedule_controller.dart';

class PrimaryCareProviderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppointmentScheduleController>(() => AppointmentScheduleController());
  }
}
