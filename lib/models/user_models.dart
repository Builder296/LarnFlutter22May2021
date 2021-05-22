class UserModel {
  late String fname;
  String? lname; // สามารถ null ได้

  UserModel({
    required this.fname,
    required this.lname, // required หรือไม่ก็ได้
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    fname = json['fname'];
    lname = json['lname'];
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['fname'] = fname;
    _data['lname'] = lname;
    return _data;
  }
}
