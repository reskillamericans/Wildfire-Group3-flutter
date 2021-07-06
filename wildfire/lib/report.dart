import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CreateReport {

    CollectionReference fireUpdate =
      FirebaseFirestore.instance.collection('fire-updates');
  
  final String name;
  final String phoneNumber;
  final String location;
  final String detail;
  final String time;

      CreateReport(this.name,
      this.phoneNumber,
      this.location,
      this.detail,
      this.time);


  CreateReport.fromJson(Map<String, dynamic> json)
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

