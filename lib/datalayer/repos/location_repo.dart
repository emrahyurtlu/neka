import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/location_model.dart';

class LocationRepo implements AbstractBaseRepo<LocationModel> {
  DBHelper _helper = DBHelper();
  String _table = "locations";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<LocationModel> get(int id) async {
    var client = await _helper.db;
    var result = await client.query(_table, where: 'id=?', whereArgs: [id]);

    if (result != null) {
      LocationModel model = LocationModel.from(result.first);
      return model;
    }

    return null;
  }

  @override
  Future<List<LocationModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);

    if (result != null) {
      return result.map((map) => LocationModel.from(map)).toList();
    }

    return null;
  }

  @override
  Future<int> insert(LocationModel model) async {
    var client = await _helper.db;
    var result = await client.insert(_table, model.toMap());
    return result;
  }

  @override
  Future<int> update(LocationModel model, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, model.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
