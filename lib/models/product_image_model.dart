class ProductImageModel {
  int id;
  int productId;
  String image;

  ProductImageModel({this.id, this.productId, this.image});

  @override
  String toString() {
    return 'ProductImageModel{id: $id, productId: $productId, image: $image}';
  }

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['productId'] = productId;
    map['image'] = image;
    return map;
  }

  ProductImageModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.productId = map['productId'];
    this.image = map['image'];
  }
}
