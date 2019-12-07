import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/category_model.dart';

class CategoryRepo implements AbstractBaseRepo<CategoryModel> {
  DBHelper _helper = DBHelper();
  String _table = "categories";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<CategoryModel> get(int id) async {
    var client = await _helper.db;
    var result = await client.query(_table, where: 'id=?', whereArgs: [id]);
    CategoryModel model = CategoryModel.from(result.first);
    return model;
  }

  @override
  Future<List<CategoryModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => CategoryModel.from(map)).toList();
  }

  @override
  Future<int> insert(CategoryModel entity) async {
    var client = await _helper.db;
    var result = await client.insert(_table, entity.toMap());
    return result;
  }

  @override
  Future<int> update(CategoryModel entity, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, entity.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
