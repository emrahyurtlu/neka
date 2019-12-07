import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/favorite_model.dart';

class FavoriteRepo implements AbstractBaseRepo<FavoriteModel> {
  DBHelper _helper = DBHelper();
  String _table = "favorites";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<FavoriteModel> get(int id) async {
    var client = await _helper.db;
    var result = await client.query(_table, where: 'id=?', whereArgs: [id]);

    if (result != null) {
      FavoriteModel model = FavoriteModel.from(result.first);
      return model;
    }
    return null;
  }

  @override
  Future<List<FavoriteModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);

    if (result != null) {
      return result.map((map) => FavoriteModel.from(map)).toList();
    }
    return null;
  }

  @override
  Future<int> insert(FavoriteModel model) async {
    var client = await _helper.db;
    var result = await client.insert(_table, model.toMap());
    return result;
  }

  @override
  Future<int> update(FavoriteModel model, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, model.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
