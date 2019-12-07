class CategoryModel {
  int id;
  int parentId;
  String name;

  CategoryModel({this.id, this.parentId, this.name});

  @override
  String toString() {
    return 'CategoryModel{id: $id, parentId: $parentId, name: $name}';
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['parentId'] = parentId;
    map['name'] = name;
    return map;
  }

  CategoryModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.parentId = map['parentId'];
    this.name = map['name'];
  }
}
