import 'dart:convert';

class DoctorDetailsModel {
  int? docId;
  String? docTier;
  String? docName;
  String? docImage;
  String? docType;
  String? docSpec;
  String? docHospitalName;
  String? location;
  String? awayFrom;
  String? patientTreated;
  String? bio;
  List<ConsultingHours>? consultingHours;
  List<PastAppointment>? pastAppointment;
  String? expertise;

  DoctorDetailsModel(
      {this.docId,
        this.expertise,
        this.docTier,
        this.docName,
        this.docImage,
        this.docType,
        this.docHospitalName,
        this.location,
        this.awayFrom,
        this.patientTreated,
        this.bio,
        this.consultingHours,
        this.pastAppointment});

  List<DoctorDetailsModel> doctorListFromJson(String str) =>
      List<DoctorDetailsModel>.from(json.decode(str).map((x) => DoctorDetailsModel.fromJson(x)));

  // String employeeToJson(List<DoctorDetailsModel> data) =>
  //     json.encode(List<dynamic>.from(data.map((x) =>   x.toJson())));

  DoctorDetailsModel.fromJson(Map<String, dynamic> json) {
    docId = json['doc_id'];
    docTier = json['doc_tier'];
    expertise = json['expertise'];
    docName = json['doc_name'];
    docImage = json['doc_image'];
    docType = json['doc_type'];
    docSpec = json['doc_spec'];
    docHospitalName = json['doc_hospital_name'];
    location = json['location'];
    awayFrom = json['away_from'];
    patientTreated = json['patient_treated'];
    bio = json['bio'];
    if (json['consulting_hours'] != null) {
      consultingHours = <ConsultingHours>[];
      json['consulting_hours'].forEach((v) {
        consultingHours!.add(ConsultingHours.fromJson(v));
      });
    }
    if (json['past_appointment'] != null) {
      pastAppointment = <PastAppointment>[];
      json['past_appointment'].forEach((v) {
        pastAppointment!.add(PastAppointment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doc_id'] = docId;
    data['doc_tier'] = docTier;
    data['doc_name'] = docName;
    data['doc_image'] = docImage;
    data['doc_type'] = docType;
    data['doc_spec'] = docSpec;
    data['expertise'] = expertise;
    data['doc_hospital_name'] = docHospitalName;
    data['location'] = location;
    data['away_from'] = awayFrom;
    data['patient_treated'] = patientTreated;
    data['bio'] = bio;
    if (consultingHours != null) {
      data['consulting_hours'] =
          consultingHours!.map((v) => v.toJson()).toList();
    }
    if (pastAppointment != null) {
      data['past_appointment'] =
          pastAppointment!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}

class ConsultingHours {
  String? consultingPeriod;
  String? consultingTimeStart;
  String? consultingTimeEnd;

  ConsultingHours(
      {this.consultingPeriod,
        this.consultingTimeStart,
        this.consultingTimeEnd});

  ConsultingHours.fromJson(Map<String, dynamic> json) {
    consultingPeriod = json['consulting_period'];
    consultingTimeStart = json['consulting_time_start'];
    consultingTimeEnd = json['consulting_time_end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['consulting_period'] = consultingPeriod;
    data['consulting_time_start'] = consultingTimeStart;
    data['consulting_time_end'] = consultingTimeEnd;
    return data;
  }
}

class PastAppointment {
  String? appointmentScheduleAt;
  String? appointmentDate;

  PastAppointment({this.appointmentScheduleAt, this.appointmentDate});

  PastAppointment.fromJson(Map<String, dynamic> json) {
    appointmentScheduleAt = json['appointment_schedule_at'];
    appointmentDate = json['appointment_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['appointment_schedule_at'] = appointmentScheduleAt;
    data['appointment_date'] = appointmentDate;
    return data;
  }
}
