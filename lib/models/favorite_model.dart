class FavoriteModel {
  int id;
  int productId;

  FavoriteModel({this.id, this.productId});

  Map<String, dynamic> toMap({withId = true}) {
    var map = Map<String, dynamic>();
    if (withId) map['id'] = id;
    map['productId'] = productId;
    return map;
  }

  FavoriteModel.from(Map<String, dynamic> map) {
    this.id = map['id'];
    this.productId = map['productId'];
  }

  @override
  String toString() {
    return 'FavoriteModel{id: $id, productId: $productId}';
  }
}
