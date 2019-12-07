class UserModel {
  int id;
  String name;
  String email;
  bool isLoggedIn;
  DateTime loginDate;

  UserModel({this.id, this.name, this.email, this.isLoggedIn, this.loginDate});

  @override
  String toString() {
    return 'UserModel{id: $id, name: $name, email: $email, isLoggedIn: $isLoggedIn, loginDate: $loginDate}';
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['isLoggedIn'] = isLoggedIn;
    map['loginDate'] = loginDate;
    return map;
  }

  UserModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.email = map['email'];
    this.isLoggedIn = map['isLoggedIn'];
    this.loginDate = DateTime.parse(map['loginDate']);
  }
}
