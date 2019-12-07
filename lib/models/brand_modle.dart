class BrandModel {
  int id;
  String name;
  String image;

  BrandModel({this.id, this.name, this.image});

  @override
  String toString() {
    return 'BrandModel{id: $id, name: $name, image: $image}';
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    return map;
  }

  BrandModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.image = map['image'];
  }
}
