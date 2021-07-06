import 'package:cloud_firestore/cloud_firestore.dart';

class GetReport {
  String name, phoneNumber, location, detail, time;

  CollectionReference fireUpdate =
      FirebaseFirestore.instance.collection('fire-updates');

  GetReport(
      {required this.name,
      required this.phoneNumber,
      required this.location,
      required this.detail,
      required this.time});

  void setName(String getName) {
    name = getName;
  }

  void setPhoneNumber(String getphoneNumber) {
    phoneNumber = getphoneNumber;
  }

  void setLocation(String getlocation) {
    location = getlocation;
  }

  void setDetail(String getdetail) {
    detail = getdetail;
  }

  void setTime(String gettime) {
    time = gettime;
  }

  GetReport.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        phoneNumber = json['phone-number'],
        location = json['location'],
        detail = json['detail'],
        time = json['time'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'phone-number': phoneNumber,
        'location': location,
        'detail': detail,
        'time': time,
      };
}