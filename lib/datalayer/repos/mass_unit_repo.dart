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
    client.query(_table, where: 'id=?', whereArgs: [id]).then((result) {
      var model = MassUnitModel.from(result.first);
      return model;
    }).catchError(() {
      return null;
    });
  }

  @override
  Future<List<MassUnitModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    client
        .query(_table, orderBy: 'id', where: where, whereArgs: args)
        .then((result) {
      return result.map((map) => MassUnitModel.from(map)).toList();
    }).catchError(() {
      return null;
    });
  }

  @override
  Future<int> insert(MassUnitModel model) async {
    var client = await _helper.db;
    var result = await client.insert(_table, model.toMap());
    return result;
  }

  @override
  Future<int> update(MassUnitModel model, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, model.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
