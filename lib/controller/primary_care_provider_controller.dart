
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:patient_360/Model/doctor_details_model.dart';
import 'package:patient_360/utils/assets.dart';
import 'package:patient_360/utils/log_utils.dart';

class PrimaryCareProviderController extends GetxController {
  RxBool isSelectedA = false.obs;
  RxBool isSelectedB = false.obs;
  RxBool isSelectedC = false.obs;
  RxBool isSelectedD = false.obs;
  RxBool isSelectedE = false.obs;
  RxBool isSelectedF = false.obs;
  RxString selectedFilter = ''.obs;
  RxList<DoctorDetailsModel> doctorList = <DoctorDetailsModel>[].obs;
  RxList<DoctorDetailsModel> recentDoctorList = <DoctorDetailsModel>[].obs;
  RxList<DoctorDetailsModel> oldeDoctorList = <DoctorDetailsModel>[].obs;
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  Future<List<DoctorDetailsModel>> fetchDoctorList() async {
    final String response = await rootBundle.loadString(AppFiles.doctorDetails);
    doctorList.value = DoctorDetailsModel().doctorListFromJson(response);
    recentDoctorList.value = doctorList.where((p0) => p0.docTier.toString() == "recent").toList();
    oldeDoctorList.value = doctorList.where((p0) => p0.docTier.toString() == "old").toList();
    return doctorList.value;
  }

  Future<void> onSelectA() async {
    isSelectedA.value = true;
    selectedFilter.value = "Family Medicine";
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = false;
    isSelectedF.value = false;
  }

  Future<void> onSelectB() async {
    isSelectedA.value = false;
    isSelectedB.value = true;
    selectedFilter.value = "Paediatrician";
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = false;
    isSelectedF.value = false;
  }

  Future<void> onSelectC() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = true;
    selectedFilter.value = "Dermatologist";
    isSelectedD.value = false;
    isSelectedE.value = false;
    isSelectedF.value = false;
  }

  Future<void> onSelectD() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = true;
    selectedFilter.value = "Surgeon";
    isSelectedE.value = false;
    isSelectedF.value = false;
  }

  Future<void> onSelectE() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = true;
    selectedFilter.value = "Cardiologist";
    isSelectedF.value = false;
  }

  Future<void> onSelectF() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = false;
    isSelectedF.value = true;
    selectedFilter.value = "Gynaecologist";
  }

  @override
  void onInit() async {
    await fetchDoctorList();
    super.onInit();
  }

}
