import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/favorite_model.dart';
import 'package:neka/utils/console_log_util.dart';

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
    client.query(_table, where: 'id=?', whereArgs: [id]).then((result) {
      FavoriteModel model = FavoriteModel.from(result.first);
      return model;
    }).catchError((Exception e) {
      consoleLog(e.toString());
      return null;
    });
  }

  @override
  Future<List<FavoriteModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    client
        .query(_table, orderBy: 'id', where: where, whereArgs: args)
        .then((result) {
      return result.map((map) => FavoriteModel.from(map)).toList();
    }).catchError(() {
      return null;
    });
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
