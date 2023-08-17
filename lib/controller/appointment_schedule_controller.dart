import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:patient_360/DatabaseHandler/DbHelper.dart';
import 'package:patient_360/Model/AppointmentModel.dart';
import 'package:patient_360/Model/UserModel.dart';
import 'package:patient_360/utils/log_utils.dart';
import 'package:patient_360/utils/preferences/preference_manager.dart';
import 'package:patient_360/utils/preferences/preferences_key.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AppointmentScheduleController extends GetxController {
  RxBool isSelectedA = false.obs;
  RxBool isSelectedB = false.obs;
  RxBool isSelectedC = false.obs;
  RxBool isSelectedD = false.obs;
  RxBool isSelectedE = false.obs;
  RxBool isSelectedF = false.obs;
  RxString selectedDate = ''.obs;
  RxString selectedTime = ''.obs;
  RxInt selectedIndex = 0.obs;
  Rx<AppointmentModel> appointment = AppointmentModel().obs;
  RxList<AppointmentModel> appointmentList = <AppointmentModel>[].obs;
  Rx<UserModel> user = UserModel().obs;

  var dbHelper;

  @override
  void onInit() async {
    dbHelper = DbHelper();
    initializeDateFormatting();
    getAppointment(await getUserId());
    getAppointmentList(await getUserId());
    getUserDetails(await getUserId());
    getUserId();
    super.onInit();
  }

  onItemTapped(int index) {
    selectedIndex.value = index;
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    selectedDate = args.value.toString().obs;
    LogUtils.showPrint(selectedDate.value);
  }

  void getUserDetails(String userId) async {
    await dbHelper.getUserDetails(userId).then((userData) {
      if (userData != null) {
        user.value = userData;
        LogUtils.showLogs(tag: "USERDATA", message: "${userData.userId}");
        LogUtils.showLogs(tag: "USER", message: "${user.value.userId}");
        return user.value;
      } else {
        LogUtils.showErrorLogs(tag: "ERROR", message: "NO DATA");
        LogUtils.showLogs(tag: "USER", message: "${user.value.userName}");
        return null;
      }
    });
  }

  void getAppointment(String userId) async {
    await dbHelper.getAppointment(userId).then((appointmentData) {
      if (appointmentData != null) {
        appointment.value = appointmentData;
        return appointment.value;
      } else {
        return null;
      }
    });
  }

  void getAppointmentList(String userId) async {
    await dbHelper.getAppointmentList(userId).then((appointmentData) {
      if (appointmentData != null) {
        appointmentList.value = appointmentData;
        return appointmentList;
      } else {
        return null;
      }
    });
  }

  // Future<List<AppointmentModel>> getAppointmentList() async {
  //   List<AppointmentModel> appointments = await dbHelper.getAppointmentList();
  //   LogUtils.showLogs(
  //       tag: "AppointmentList", message: "${appointments.length}");
  //   LogUtils.showLogs(
  //       tag: "Appointment1", message: "${appointments[0].patientId}");
  //   LogUtils.showLogs(
  //       tag: "AppointmentList2", message: "${appointments[0].patientId}");
  //   return appointments;
  // }

  Future<String> getUserId() async {
    return AppPreference().getString(PreferencesKey.userId);
  }

  Future<void> onSelectA() async {
    isSelectedA.value = true;
    selectedTime.value = "9:30 AM";
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = false;
    isSelectedF.value = false;
  }

  Future<void> onSelectB() async {
    isSelectedA.value = false;
    isSelectedB.value = true;
    selectedTime.value = "10:00 AM";
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = false;
    isSelectedF.value = false;
  }

  Future<void> onSelectC() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = true;
    selectedTime.value = "10:30 AM";
    isSelectedD.value = false;
    isSelectedE.value = false;
    isSelectedF.value = false;
  }

  Future<void> onSelectD() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = true;
    selectedTime.value = "11:00 AM";
    isSelectedE.value = false;
    isSelectedF.value = false;
  }

  Future<void> onSelectE() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = true;
    selectedTime.value = "11:30 PM";
    isSelectedF.value = false;
  }

  Future<void> onSelectF() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = false;
    isSelectedF.value = true;
    selectedTime.value = "12:00 PM";
  }
}
