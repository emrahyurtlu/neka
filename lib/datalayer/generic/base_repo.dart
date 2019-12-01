import 'package:flutter/cupertino.dart';
import 'package:neka/datalayer/generic/abstract_base_repo.dart';
import 'package:neka/datalayer/generic/database_helper.dart';

class BaseRepo<AbstractModel> implements AbstratcBaseRepo<AbstractModel> {
  @override
  DBHelper helper;

  @override
  String table;

  BaseRepo({@required this.table}) {
    this.helper = DBHelper();
  }

  @override
  Future<int> delete(int id) async {
    var client = await helper.db;
    var result = await client.delete(table, where: 'id=?', whereArgs: [id]);
    return result;
  }

  @override
  Future<AbstractModel> get(int id) async {
    var client = await helper.db;
    var result = await client.query(table, where: 'id=?', whereArgs: [id]);
    var model = result.first as AbstractModel;
    return model;
  }

  @override
  Future<List<AbstractModel>> getList({String where, List args}) async {
    var client = await helper.db;
    var result =
        await client.query(table, orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => map as AbstractModel).toList();
  }

  @override
  Future<int> insert(AbstractModel entity) async {
    var client = await helper.db;
    var result = await client.insert(table, entity as Map);
    return result;
  }

  @override
  Future<int> update(AbstractModel entity, int id) async {
    var client = await helper.db;
    var result = await client
        .update(table, entity as Map, where: "id=?", whereArgs: [id]);
    return result;
  }
}
