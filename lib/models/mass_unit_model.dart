class MassUnitModel {
  int id;
  String name;

  MassUnitModel({this.id, this.name});

  @override
  String toString() {
    return 'MassUnitModel{id: $id, name: $name}';
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['name'] = name;
    return map;
  }

  MassUnitModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
  }
}
