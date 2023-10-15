class UserModel {
  bool status;
  String msg;
  String login_token;
  int appVersion;
  UserData data;
  List selectedLanguage;
  UserModel(this.status, this.msg, this.login_token, this.appVersion, this.data,
      this.selectedLanguage);

  factory UserModel.fromJson(Map<dynamic, dynamic> json) {
    List l = List.from(json['selectedLanguage']);
    return UserModel(
        json['status'],
        json['msg'],
        json['login_token'],
        int.tryParse(json['appVersion'].toString()) ?? 5,
        UserData.fromJson(json['data']),
        l);
  }
}

class UserData {
  int id;
  String name = "";
  String email = "";
  String mobile = "";
  String image = "";
  String dob = "";
  int gender;

  UserData(this.id, this.name, this.email, this.mobile, this.image, this.dob,
      this.gender);

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
        json['id'],
        json['name'],
        json['email'],
        json['mobile'] ?? '',
        json['image'],
        json['dob'] ?? '',
        int.tryParse(json['gender'].toString()) ?? 0);
  }
}
