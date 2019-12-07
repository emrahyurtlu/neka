class ProductModel {
  int id;
  int brandId;
  int categoryId;
  int massUnitId;
  String name;
  String mass;
  String barcode;
  String image;

  ProductModel(
      {this.id,
      this.brandId,
      this.categoryId,
      this.massUnitId,
      this.name,
      this.mass,
      this.barcode,
      this.image});

  @override
  String toString() {
    return 'ProductModel{id: $id, brandId: $brandId, categoryId: $categoryId, massUnitId: $massUnitId, name: $name, mass: $mass, barcode: $barcode, image: $image}';
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['brandId'] = brandId;
    map['categoryId'] = categoryId;
    map['massUnitId'] = massUnitId;
    map['name'] = name;
    map['mass'] = mass;
    map['barcode'] = barcode;
    return map;
  }

  ProductModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.brandId = map['brandId'];
    this.categoryId = map['categoryId'];
    this.massUnitId = map['massUnitId'];
    this.name = map['name'];
    this.mass = map['mass'];
    this.barcode = map['barcode'];
    this.image = map['image'];
  }
}
