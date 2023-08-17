import 'package:get/get.dart';
import 'package:patient_360/binding/appointment_schedule_binding.dart';
import 'package:patient_360/binding/home_screen_binding.dart';
import 'package:patient_360/binding/primary_care_provider_binding.dart';
import 'package:patient_360/binding/register_screen_binding.dart';
import 'package:patient_360/screens/all_appointment_view.dart';
import 'package:patient_360/screens/appointment_details_screen.dart';
import 'package:patient_360/screens/bottom_bar_screen.dart';
import 'package:patient_360/screens/medication_details_screen.dart';
import 'package:patient_360/screens/medication_screen.dart';
import 'package:patient_360/screens/medication_serach_screen.dart';
import 'package:patient_360/screens/my_claim_data_a.dart';
import 'package:patient_360/screens/my_claim_data_b.dart';
import 'package:patient_360/screens/my_claim_data_c.dart';
import 'package:patient_360/screens/my_claim_data_d.dart';
import 'package:patient_360/screens/my_diagnosis_details_screen.dart';
import 'package:patient_360/screens/my_diagnosis_screen.dart';
import 'package:patient_360/screens/my_goals_screen.dart';
import 'package:patient_360/screens/notification_screen.dart';
import 'package:patient_360/screens/primary_care_provider_details_screen.dart';
import 'package:patient_360/screens/primary_care_provider_screen.dart';
import 'package:patient_360/screens/primary_care_provider_success_screen.dart';
import 'package:patient_360/screens/registartion_approval_pending_screen.dart';
import 'package:patient_360/screens/splash_screen.dart';
import 'package:patient_360/utils/routes/routes_strings.dart';

import '../../screens/customer_care_screen.dart';

import '../../screens/login_page_register.dart';
import '../../screens/login_page_screen.dart';
import '../../screens/login_registration_detail_screen.dart';
import '../../screens/my_claim_detail.dart';
import '../../screens/primary_care_provider_search_screen.dart';

class GetPages {
  static List<GetPage> getPages = [
    GetPage(
      name: RoutesConstants.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RoutesConstants.homeScreen,
      page: () => BottomBar(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: RoutesConstants.myDiagnosisScreen,
      page: () => MyDiagnosisScreen(),
      // binding: MyDiagnosisBinding(),
    ),
    GetPage(
      name: RoutesConstants.myDiagnosisPageDetailsScreen,
      page: () => MyDiagnosisDetailsScreen(),
      // binding: MyDiagnosisDetailsBinding(),
    ),
    GetPage(
      name: RoutesConstants.primaryCareProviderScreen,
      page: () =>  PrimaryCareProviderScreen(),
      binding: PrimaryCareProviderBinding(),
    ),
    GetPage(
      name: RoutesConstants.primaryCareProviderDetailsScreen,
      page: () => PrimaryCareProviderDetailsScreen(),
      binding: AppointmentScheduleBinding(),
    ),
    GetPage(
      name: RoutesConstants.appointmentDetailsScreen,
      page: () => AppointmentDetailsScreen(),
      // binding: AppointmentDetailsBinding(),
    ),
    GetPage(
      name: RoutesConstants.appointmentConfirmationScreen,
      page: () => PrimaryCareProviderSuccessScreen(),
      // binding: AppointmentScheduleBinding(),
    ),
    GetPage(
      name: RoutesConstants.loginScreen,
      page: () => LoginPageScreen(),
      // binding: AppointmentConfirmationBinding(),
    ),
    GetPage(
      name: RoutesConstants.primaryCareProviderSearch,
      page: () => PrimaryCareProviderSearchScreen(),
      // binding: AppointmentConfirmationBinding(),
    ),
    GetPage(
      name: RoutesConstants.registerPage,
      page: () => RegisterUserScreen(),
      binding: RegisterScreenBinding(),
    ),
    GetPage(
        name: RoutesConstants.loginRegistrationDetail,
        page: () => RegistrationDetailScreen()),
    // GetPage(name: RoutesConstants.loginPage, page: () => const LoginPageScreen()),

    GetPage(
        name: RoutesConstants.customerCareScreen,
        page: () => const CustomerCareScreen()),

    GetPage(
        name: RoutesConstants.myClaimDataA, page: () => MyClaimDataA()),
    GetPage(
        name: RoutesConstants.myClaimDataB, page: () => const MyClaimDataB()),
    GetPage(
        name: RoutesConstants.myClaimDataC, page: () => const MyClaimDataC()),
    GetPage(
        name: RoutesConstants.myClaimDataD, page: () => MyClaimDataD()),
    GetPage(
        name: RoutesConstants.allAppointmentScreen,
        page: () => AllAppointmentScreen()),
    GetPage(
        name: RoutesConstants.medicationScreen,
        page: () => MedicationScreen()),
    GetPage(
        name: RoutesConstants.medicationSearchScreen,
        page: () => MedicationSearch()),
    GetPage(
        name: RoutesConstants.myClaimDetailScreen,
        page: () => MyClaimDetailScreen()),
    GetPage(
        name: RoutesConstants.registrationApprovalPendingScreen,
        page: () => RegistrationApprovalPendingScreen()),
    GetPage(
        name: RoutesConstants.myGoalsScreen,
        page: () => const MyGoalsScreen()),
    GetPage(
        name: RoutesConstants.medicationDetailsScreen,
        page: () => MedicationDetailsScreen()),
    GetPage(
        name: RoutesConstants.notificationScreen,
        page: () => NotificationScreen()),

    // GetPage(
    //   name: RoutesConstants.bottomNavigator,
    //   page: () => const BottomNavigator(),
    // ),
  ];
}
