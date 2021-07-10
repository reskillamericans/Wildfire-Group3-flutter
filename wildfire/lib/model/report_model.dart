

class Report {

  late final String _name, _phoneNumber, _location, _detail, _time;

  String get name => _name;

  String get phoneNumber => _phoneNumber;

  String get location => _location;

  String get detail => _detail;

  String get time => _time;

  Report.fromJson(Map<String, dynamic> json)
    : _name = json['name'],
      _phoneNumber = json['phone-number'],
      _location = json['location'],
      _detail = json['detail'],
      _time = json['time'];

  Map<String, dynamic> toJson() => {
        'name': _name,
        'phone-number': _phoneNumber,
        'location': _location,
        'detail': _detail,
        'time': _time,
      };


}
