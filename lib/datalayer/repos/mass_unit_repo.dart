import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/mass_unit_model.dart';

class MassUnitRepo implements AbstractBaseRepo<MassUnitModel> {
  DBHelper _helper = DBHelper();
  String _table = "mass_units";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<MassUnitModel> get(int id) async {
    var client = await _helper.db;
    var result = await client.query(_table, where: 'id=?', whereArgs: [id]);
    var model = MassUnitModel.from(result.first);
    return model;
  }

  @override
  Future<List<MassUnitModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => MassUnitModel.from(map)).toList();
  }

  @override
  Future<int> insert(MassUnitModel entity) async {
    var client = await _helper.db;
    var result = await client.insert(_table, entity.toMap());
    return result;
  }

  @override
  Future<int> update(MassUnitModel entity, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, entity.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
