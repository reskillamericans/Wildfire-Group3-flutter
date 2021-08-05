import 'package:cloud_firestore/cloud_firestore.dart';

class Report {
  late final String _name, _phoneNumber, _location, _detail;
  Timestamp _time;

  String get name => _name;

  String get phoneNumber => _phoneNumber;

  String get location => _location;

  String get detail => _detail;

  Timestamp get time => _time;

  Report.fromJson(DocumentSnapshot data)
      : _name = data['name'],
        _phoneNumber = data['phone-number'],
        _location = data['location'],
        _detail = data['detail'],
        _time = data['time'];

  Map<String, dynamic> toJson() => {
        'name': _name,
        'phone-number': _phoneNumber,
        'location': _location,
        'detail': _detail,
        'time': _time,
      };

  @override
  String toString() {
    return 'Report{_name: $_name, _phoneNumber: $_phoneNumber, _location: $_location, _detail: $_detail,  _time: $_time';
  }
}
