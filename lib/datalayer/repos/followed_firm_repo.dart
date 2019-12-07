import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/followed_firm_model.dart';

class FollowedFirmRepo implements AbstractBaseRepo<FollowedFirmModel> {
  DBHelper _helper = DBHelper();
  String _table = "followed_firms";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<FollowedFirmModel> get(int id) async {
    var client = await _helper.db;
    client.query(_table, where: 'id=?', whereArgs: [id]).then((result) {
      FollowedFirmModel model = FollowedFirmModel.from(result.first);
      return model;
    }).catchError(() {
      return null;
    });
  }

  @override
  Future<List<FollowedFirmModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    client
        .query(_table, orderBy: 'id', where: where, whereArgs: args)
        .then((result) {
      return result.map((map) => FollowedFirmModel.from(map)).toList();
    }).catchError(() {
      return null;
    });
  }

  @override
  Future<int> insert(FollowedFirmModel model) async {
    var client = await _helper.db;
    var result = await client.insert(_table, model.toMap());
    return result;
  }

  @override
  Future<int> update(FollowedFirmModel model, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, model.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
