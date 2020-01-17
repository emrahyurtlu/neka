class CartModel {
  int id;
  String name;

  CartModel({this.id, this.name});

  @override
  String toString() {
    return 'CartModel{id: $id, name: $name}';
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['name'] = name;
    return map;
  }

  CartModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
  }
}
