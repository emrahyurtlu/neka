import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/user_model.dart';

class UserRepo implements AbstractBaseRepo<UserModel> {
  DBHelper _helper = DBHelper();
  String _table = "users";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<UserModel> get(int id) async {
    var client = await _helper.db;
    var result = await client.query(_table, where: 'id=?', whereArgs: [id]);
    var model = UserModel.from(result.first);
    return model;
  }

  @override
  Future<List<UserModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => UserModel.from(map)).toList();
  }

  @override
  Future<int> insert(UserModel entity) async {
    var client = await _helper.db;
    var result = await client.insert(_table, entity.toMap());
    return result;
  }

  @override
  Future<int> update(UserModel entity, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, entity.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
