
import 'package:get/get.dart';

class MedicationController extends GetxController {
  RxBool isSelectedA = false.obs;
  RxBool isSelectedB = false.obs;
  RxBool isSelectedC = false.obs;
  RxBool isSelectedD = false.obs;
  RxBool isSelectedE = false.obs;
  RxString selectedFilter = ''.obs;

  Future<void> onSelectA() async {
    isSelectedA.value = true;
    selectedFilter.value = "Diabetes Mellitus - Type 2";
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = false;
  }

  Future<void> onSelectB() async {
    isSelectedA.value = false;
    isSelectedB.value = true;
    selectedFilter.value = "Coronary Artery Disease";
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = false;
  }


  Future<void> onSelectC() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = true;
    selectedFilter.value = "Uterus Fibroids";
    isSelectedD.value = false;
    isSelectedE.value = false;
  }

  Future<void> onSelectD() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = true;
    isSelectedE.value = false;
    selectedFilter.value = "Renal diseases";
  }

  Future<void> onSelectE() async {
    isSelectedA.value = false;
    isSelectedB.value = false;
    isSelectedC.value = false;
    isSelectedD.value = false;
    isSelectedE.value = true;
    selectedFilter.value = "Pneumonia";
  }

}
