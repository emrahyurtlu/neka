import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/datalayer/helper/database_helper.dart';
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
    var result = await client.query(_table, where: 'id=?', whereArgs: [id]);
    FollowedFirmModel model = FollowedFirmModel.from(result.first);
    return model;
  }

  @override
  Future<List<FollowedFirmModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => FollowedFirmModel.from(map)).toList();
  }

  @override
  Future<int> insert(FollowedFirmModel entity) async {
    var client = await _helper.db;
    var result = await client.insert(_table, entity.toMap());
    return result;
  }

  @override
  Future<int> update(FollowedFirmModel entity, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, entity.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
