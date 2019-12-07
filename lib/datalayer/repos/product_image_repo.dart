import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/product_image_model.dart';

class ProductImageRepo implements AbstractBaseRepo<ProductImageModel> {
  DBHelper _helper = DBHelper();
  String _table = "product_images";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<ProductImageModel> get(int id) async {
    var client = await _helper.db;
    client.query(_table, where: 'id=?', whereArgs: [id]).then((result) {
      var model = ProductImageModel.from(result.first);
      return model;
    }).catchError(() {
      return null;
    });
  }

  @override
  Future<List<ProductImageModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);

    if (result != null) {
      return result.map((map) => ProductImageModel.from(map)).toList();
    }

    return null;
  }

  @override
  Future<int> insert(ProductImageModel model) async {
    var client = await _helper.db;
    var result = await client.insert(_table, model.toMap());
    return result;
  }

  @override
  Future<int> update(ProductImageModel model, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, model.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
