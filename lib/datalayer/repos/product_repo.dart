import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/product_model.dart';

class ProductRepo implements AbstractBaseRepo<ProductModel> {
  DBHelper _helper = DBHelper();
  String _table = "products";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<ProductModel> get(int id) async {
    var client = await _helper.db;
    client.query(_table, where: 'id=?', whereArgs: [id]).then((result) {
      var model = ProductModel.from(result.first);
      return model;
    }).catchError(() {
      return null;
    });
  }

  @override
  Future<List<ProductModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);

    if (result != null) {
      return result.map((map) => ProductModel.from(map)).toList();
    }

    return null;
  }

  @override
  Future<int> insert(ProductModel model) async {
    var client = await _helper.db;
    var result = await client.insert(_table, model.toMap());
    return result;
  }

  @override
  Future<int> update(ProductModel model, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, model.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
