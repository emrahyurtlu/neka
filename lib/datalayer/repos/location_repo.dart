import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/datalayer/helper/database_helper.dart';
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
    LocationModel model = LocationModel.from(result.first);
    return model;
  }

  @override
  Future<List<LocationModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => LocationModel.from(map)).toList();
  }

  @override
  Future<int> insert(LocationModel entity) async {
    var client = await _helper.db;
    var result = await client.insert(_table, entity.toMap());
    return result;
  }

  @override
  Future<int> update(LocationModel entity, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, entity.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}