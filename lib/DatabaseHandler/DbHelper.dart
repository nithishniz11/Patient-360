import 'package:path_provider/path_provider.dart';
import 'package:patient_360/Model/AppointmentModel.dart';
import 'package:patient_360/Model/UserModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DbHelper {
  static Database? _db;

  static const String DB_Name = 'patient-360_prod.db';
  static const String Table_User = 'user';
  static const String Table_Appointments = 'appointments';
  static const String Table_Doctor = 'doctors';
  static const int Version = 1;

  static const String C_UserID = 'user_id';
  static const String C_UserName = 'user_name';
  static const String C_Email = 'email';
  static const String C_Password = 'password';

  static const String Appointment_ID = 'appointment_id';
  static const String Patient_Name = 'patient_name';
  static const String Patient_ID = 'patient_id';
  static const String Appointment_Date = 'appointment_date';
  static const String Appointment_Time = 'appointment_time';
  static const String Appointment_Type = 'appointment_type';
  static const String Doctor_Name = 'doctor_name';
  static const String Doctor_Speciality = 'doctor_speciality';
  static const String Doctor_Img = 'doctor_img';

  // CREATE TABLE [doctorDetails] (
  // [doc_id] INT,
  // [doc_name] TEXT,
  // [doc_image] TEXT,
  // [doc_type] TEXT,
  // [doc_hospital_name] TEXT,
  // [location] TEXT,
  // [patient_thereated] INT,
  // [bio] TEXT,
  // [consulting_hours] TEXT,
  // [past_appointment] TEXT
  // );
  //
  // INSERT INTO [doctorDetails] VALUES
  // (1,'Alex burgie','','Gynaecologist','Advert Helth Hospital','Texas',1024,'I am a doctor my motto is to provide a healthy life for you. I am working as doctor at Advert Helth Hospital since 4 years and i have done more then 100 surgeries.','[{"consulting_period":"Morning","consulting_time_start":"09:00","consulting_time_end":"13:00"},{"consulting_period":"Evening","consulting_time_start":"16:00","consulting_time_end":"22:00"}]','[{"appointment_schedule_at":"Yesterday","appointment_date":"2023-04-10"},{"appointment_schedule_at":"A week ago","appointment_date":"2023-04-04"},{"appointment_schedule_at":"A week ago","appointment_date":"2023-04-03"},{"appointment_schedule_at":"A month ago","appointment_date":"2023-03-10"}]'),
  // (2,'Mike Grofer','','Physiotherapist','Global Helth Hospital','Texas',500,'I am a doctor my motto is to provide a healthy life for you. I am working as doctor at Global Helth Hospital since 2 years and i have work with all type of patients.','[{"consulting_period":"Morning","consulting_time_start":"09:00","consulting_time_end":"13:00"},{"consulting_period":"Evening","consulting_time_start":"16:00","consulting_time_end":"22:00"}]','[{"appointment_schedule_at":"Yesterday","appointment_date":"2023-04-10"},{"appointment_schedule_at":"A week ago","appointment_date":"2023-04-04"},{"appointment_schedule_at":"A week ago","appointment_date":"2023-04-03"},{"appointment_schedule_at":"A month ago","appointment_date":"2023-03-10"}]');

  static const String doctor_id = 'doctor_id';
  static const String doc_image = "doc_image";
  static const String doc_type = "doc_type";
  static const String patient_treated = "patient_treated";
  static const String doc_hospital_name = "doc_hospital_name";
  static const String location = "location";
  static const String bio = "bio";
  static const String consulting_hours = "consulting_hours";
  static const String past_appointment = "past_appointment";

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_User ("
        " $C_UserID TEXT, "
        " $C_UserName TEXT, "
        " $C_Email TEXT,"
        " $C_Password TEXT, "
        " PRIMARY KEY ($C_UserID)"
        ")");

    await db.execute("CREATE TABLE $Table_Appointments ("
        " $Appointment_ID TEXT, "
        " $Patient_ID TEXT, "
        " $Patient_Name TEXT,"
        " $Appointment_Date TEXT, "
        " $Appointment_Time TEXT, "
        " $Appointment_Type TEXT, "
        " $Doctor_Name TEXT, "
        " $Doctor_Speciality TEXT, "
        " $Doctor_Img TEXT, "
        " PRIMARY KEY ($Appointment_ID)"
        ")");
  }

  Future<int> saveUserData(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_User, user.toMap());
    return res;
  }

  Future<int> saveAppointmentData(AppointmentModel appointment) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Appointments, appointment.toMap());
    return res;
  }

  Future<UserModel?> getLoginUser(String userId) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_User WHERE "
        "$C_UserID = '$userId' ");

    if (res.isNotEmpty) {
      return UserModel.fromMap(res.first);
    }

    return null;
  }

  Future<UserModel?> getUserDetails(String userId) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_User WHERE "
        "$C_UserID = '$userId'");

    if (res.isNotEmpty) {
      return UserModel.fromMap(res.first);
    }

    return null;
  }

  Future<AppointmentModel?> getAppointment(String userId) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_Appointments WHERE "
        "$Patient_ID = '$userId'");

    if (res.isNotEmpty) {
      return AppointmentModel.fromMap(res.last);
    }

    return null;
  }

  Future<List<AppointmentModel?>?> getAppointmentList(String userId) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_Appointments WHERE "
        "$Patient_ID = '$userId'");
    if (res.isNotEmpty) {
      var list = (res).map((data) => AppointmentModel.fromMap(data)).toList();
      return list;
    }
    return null;
  }

//   List<MonitorModel> monitorList = new List();
//   for (int i = 0; i < 288; i++) {
//   monitorList.add(new MonitorModel(
//   i.toString(),
//   "SFPCA_000" + i.toString(),
//   "Electronics Testing",
//   "Kalapatti Coimbatore India",
//   "03 Jul 2019 10:08:13 AM",
//   "440.0" + i.toString(),
//   "2.0" + i.toString()));
//   }
// }

  Future<int> updateUser(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.update(Table_User, user.toMap(),
        where: '$C_UserID = ?', whereArgs: [user.userId]);
    return res;
  }

  Future<int> deleteUser(String userId) async {
    var dbClient = await db;
    var res = await dbClient
        .delete(Table_User, where: '$C_UserID = ?', whereArgs: [userId]);
    return res;
  }
}
