import 'dart:convert';

class HealthNotificationDetails {
  String? id;
  String? title;
  String? notificationType;
  String? time;
  String? unread;

  HealthNotificationDetails(
      {this.id, this.title, this.notificationType, this.time, this.unread});

  HealthNotificationDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    notificationType = json['notification_type'];
    time = json['time'];
    unread = json['unread'];
  }

  List<HealthNotificationDetails> healthNotificationListFromJson(String str) =>
      List<HealthNotificationDetails>.from(json.decode(str).map((x) => HealthNotificationDetails.fromJson(x)));

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['notification_type'] = notificationType;
    data['time'] = time;
    data['unread'] = unread;
    return data;
  }
}
