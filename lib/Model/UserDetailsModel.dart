import 'dart:convert';

class UserDetailsModel {
  String? mRN;
  String? userName;
  String? userImage;
  String? dob;
  String? age;
  String? gender;
  String? height;
  String? weight;
  ContactInfo? contactInfo;

  UserDetailsModel(
      {this.mRN,
        this.userName,
        this.userImage,
        this.dob,
        this.age,
        this.gender,
        this.height,
        this.weight,
        this.contactInfo});

  UserDetailsModel.fromJson(Map<String, dynamic> json) {
    mRN = json['MRN'];
    userName = json['user_name'];
    userImage = json['user_image'];
    dob = json['dob'];
    age = json['age'];
    gender = json['gender'];
    height = json['height'];
    weight = json['weight'];
    contactInfo = json['contact_info'] != null
        ? ContactInfo.fromJson(json['contact_info'])
        : null;
  }

  List<UserDetailsModel> userListFromJson(String str) =>
      List<UserDetailsModel>.from(json.decode(str).map((x) => UserDetailsModel.fromJson(x)));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MRN'] = mRN;
    data['user_name'] = userName;
    data['user_image'] = userImage;
    data['dob'] = dob;
    data['age'] = age;
    data['gender'] = gender;
    data['height'] = height;
    data['weight'] = weight;
    if (contactInfo != null) {
      data['contact_info'] = contactInfo!.toJson();
    }
    return data;
  }
}

class ContactInfo {
  String? email;
  String? phone;
  String? address;

  ContactInfo({this.email, this.phone, this.address});

  ContactInfo.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['phone'] = phone;
    data['address'] = address;
    return data;
  }
}
