import 'package:neka/datalayer/helper/database_helper.dart';
import 'package:neka/datalayer/repos/abstract_base_repo.dart';
import 'package:neka/models/brand_modle.dart';

class BrandRepo implements AbstractBaseRepo<BrandModel> {
  DBHelper _helper = DBHelper();
  String _table = "brands";

  @override
  Future<int> delete(int id) async {
    var client = await _helper.db;
    var result = await client.delete(_table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<BrandModel> get(int id) async {
    var client = await _helper.db;
    var result = await client.query(_table, where: 'id=?', whereArgs: [id]);
    var model = BrandModel.from(result.first);
    return model;
  }

  @override
  Future<List<BrandModel>> getList({String where, List args}) async {
    var client = await _helper.db;
    var result = await client.query(_table,
        orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => BrandModel.from(map)).toList();
  }

  @override
  Future<int> insert(BrandModel entity) async {
    var client = await _helper.db;
    var result = await client.insert(_table, entity.toMap());
    return result;
  }

  @override
  Future<int> update(BrandModel entity, int id) async {
    var client = await _helper.db;
    var result = await client.update(_table, entity.toMap(withId: false),
        where: "id=?", whereArgs: [id]);
    return result;
  }
}
