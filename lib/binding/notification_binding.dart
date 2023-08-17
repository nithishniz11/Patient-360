import 'package:get/get.dart';
import 'package:patient_360/controller/notification_controller.dart';

class NotificationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationScreenController>(() => NotificationScreenController());
  }
}
