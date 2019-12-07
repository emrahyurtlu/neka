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
    var result = await client.query(_table, where: 'id=?', whereArgs: [id]);
    var model = ProductImageModel.from(result.first);
    return model;
  }

  @override
  Future<List<ProductImageModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => ProductImageModel.from(map)).toList();
  }

  @override
  Future<int> insert(ProductImageModel entity) async {
    var client = await _helper.db;
    var result = await client.insert(_table, entity.toMap());
    return result;
  }

  @override
  Future<int> update(ProductImageModel entity, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, entity.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
