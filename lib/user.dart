class User {
  final String uid;

  User({this.uid});
}

class UserData {
  final String uid;
  final String name;
  final String number;
  final String mail;
  final String insuranceId;
  final String age;
  final String phone;
  final String gender;

  UserData(
      {this.uid,
      this.name,
      this.number,
      this.mail,
      this.age,
      this.gender,
      this.insuranceId,
      this.phone});
}
