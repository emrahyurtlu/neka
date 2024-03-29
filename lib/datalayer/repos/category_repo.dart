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
    client.query(_table, where: 'id=?', whereArgs: [id]).then((result) {
      CategoryModel model = CategoryModel.from(result.first);
      return model;
    }).catchError(() {
      return null;
    });
  }

  @override
  Future<List<CategoryModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    client
        .query(_table, orderBy: 'id', where: where, whereArgs: args)
        .then((result) {
      return result.map((map) => CategoryModel.from(map)).toList();
    }).catchError(() {
      return null;
    });
  }

  @override
  Future<int> insert(CategoryModel model) async {
    var client = await _helper.db;
    var result = await client.insert(_table, model.toMap());
    return result;
  }

  @override
  Future<int> update(CategoryModel model, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, model.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
