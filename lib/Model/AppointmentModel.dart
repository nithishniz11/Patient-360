class AppointmentModel {
  String? appointmentId;
  String? patientId;
  String? patientName;
  String? appointmentDate;
  String? appointmentTime;
  String? appointmentType;
  String? doctorName;
  String? doctorSpeciality;
  String? doctorImg;

  AppointmentModel(
      {this.appointmentId,
      this.patientId,
      this.patientName,
      this.appointmentDate,
      this.appointmentTime,
      this.appointmentType,
      this.doctorName,
      this.doctorSpeciality,
      this.doctorImg});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'appointment_id': appointmentId,
      'patient_id': patientId,
      'patient_name': patientName,
      'appointment_date': appointmentDate,
      'appointment_time': appointmentTime,
      'appointment_type': appointmentType,
      'doctor_name': doctorName,
      'doctor_speciality': doctorSpeciality,
      'doctor_img': doctorImg
    };
    return map;
  }

  AppointmentModel.fromMap(Map<String, dynamic> map) {
    appointmentId = map['appointment_id'];
    patientId = map['patient_id'];
    patientName = map['patient_name'];
    appointmentDate = map['appointment_date'];
    appointmentTime = map['appointment_time'];
    appointmentType = map['appointment_type'];
    doctorName = map['doctor_name'];
    doctorSpeciality = map['doctor_speciality'];
    doctorImg = map['doctor_img'];
  }
}
