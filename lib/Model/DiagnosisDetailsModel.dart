import 'dart:convert';
class DiagnosisDetailsModel {
  String? id;
  String? userid;
  String? diagnosisTier;
  String? title;
  String? lasTreated;
  String? location;
  String? doctor1;
  String? doctor1Speciality;
  String? doctor2;
  String? doctor2Speciality;
  String? patientObservation;
  String? doctorObservation;
  List<Medication>? medication;
  String? ultrasCopy;
  String? echo;
  String? bloodTest;

  DiagnosisDetailsModel(
      {this.id,
        this.userid,
        this.diagnosisTier,
        this.title,
        this.lasTreated,
        this.location,
        this.doctor1,
        this.doctor1Speciality,
        this.doctor2,
        this.doctor2Speciality,
        this.patientObservation,
        this.doctorObservation,
        this.medication,
        this.ultrasCopy,
        this.echo,
        this.bloodTest});

  List<DiagnosisDetailsModel> diagnosisDetailsListFromJson(String str) =>
      List<DiagnosisDetailsModel>.from(json.decode(str).map((x) => DiagnosisDetailsModel.fromJson(x)));

  DiagnosisDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    diagnosisTier = json['DiagnosisTier'];
    title = json['title'];
    lasTreated = json['lasTreated'];
    location = json['location'];
    doctor1 = json['doctor1'];
    doctor1Speciality = json['doctor1Speciality'];
    doctor2 = json['doctor2'];
    doctor2Speciality = json['doctor2Speciality'];
    patientObservation = json['patientObservation'];
    doctorObservation = json['doctorObservation'];
    if (json['medication'] != null) {
      medication = <Medication>[];
      json['medication'].forEach((v) {
        medication!.add(new Medication.fromJson(v));
      });
    }
    ultrasCopy = json['ultrascopy'];
    echo = json['echo'];
    bloodTest = json['bloodTest'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userid'] = userid;
    data['DiagnosisTier'] = diagnosisTier;
    data['title'] = title;
    data['lasTreated'] = lasTreated;
    data['location'] = location;
    data['doctor1'] = doctor1;
    data['doctor1Speciality'] = doctor1Speciality;
    data['doctor2'] = doctor2;
    data['doctor2Speciality'] = doctor2Speciality;
    data['patientObservation'] = patientObservation;
    data['doctorObservation'] = doctorObservation;
    if (medication != null) {
      data['medication'] = medication!.map((v) => v.toJson()).toList();
    }
    data['ultrascopy'] = ultrasCopy;
    data['echo'] = echo;
    data['bloodTest'] = bloodTest;
    return data;
  }
}

class Medication {
  String? tablet;
  String? usage;
  String? common;

  Medication({this.tablet,this.usage,this.common});

  Medication.fromJson(Map<String, dynamic> json) {
    tablet = json['tablet'];
    usage = json['usage'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tablet'] = tablet;
    data['usage'] = usage;
    data['common'] = common;
    return data;
  }
}

// class DiagnosisDetailsModel {
//   String? id;
//   String? userid;
//   String? diagnosisTier;
//   String? title;
//   String? lasTreated;
//   String? location;
//   String? doctor1;
//   String? doctor1Speciality;
//   String? doctor2;
//   String? doctor2Speciality;
//   String? patientObservation;
//   String? doctorObservation;
//   String? medication;
//
//   DiagnosisDetailsModel(
//       {this.id,
//         this.userid,
//         this.diagnosisTier,
//         this.title,
//         this.lasTreated,
//         this.location,
//         this.doctor1,
//         this.doctor1Speciality,
//         this.doctor2,
//         this.doctor2Speciality,
//         this.patientObservation,
//         this.doctorObservation,
//         this.medication});
//
//   DiagnosisDetailsModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     userid = json['userid'];
//     diagnosisTier = json['DiagnosisTier'];
//     title = json['title'];
//     lasTreated = json['lasTreated'];
//     location = json['location'];
//     doctor1 = json['doctor1'];
//     doctor1Speciality = json['doctor1Speciality'];
//     doctor2 = json['doctor2'];
//     doctor2Speciality = json['doctor2Speciality'];
//     patientObservation = json['patientObservation'];
//     doctorObservation = json['doctorObservation'];
//     medication = json['medication'];
//   }
//
//
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['userid'] = userid;
//     data['DiagnosisTier'] = diagnosisTier;
//     data['title'] = title;
//     data['lasTreated'] = lasTreated;
//     data['location'] = location;
//     data['doctor1'] = doctor1;
//     data['doctor1Speciality'] = doctor1Speciality;
//     data['doctor2'] = doctor2;
//     data['doctor2Speciality'] = doctor2Speciality;
//     data['patientObservation'] = patientObservation;
//     data['doctorObservation'] = doctorObservation;
//     data['medication'] = medication;
//     return data;
//   }
// }
