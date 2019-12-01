import 'package:flutter/cupertino.dart';
import 'package:neka/datalayer/generic/abstract_base_repo.dart';
import 'package:neka/datalayer/generic/database_helper.dart';

class BaseRepo<T> implements AbstratcBaseRepo<T> {
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
  Future<T> get(int id) async {
    var client = await helper.db;
    var result = await client.query(table, where: 'id=?', whereArgs: [id]);
    var model = result.first as T;
    return model;
  }

  @override
  Future<List<T>> getList({String where, List args}) async {
    var client = await helper.db;
    var result =
        await client.query(table, orderBy: 'id', where: where, whereArgs: args);
    return result.map((map) => map as T).toList();
  }

  @override
  Future<int> insert(T entity) async {
    var client = await helper.db;
    var result = await client.insert(table, entity as Map);
    return result;
  }

  @override
  Future<int> update(T entity, int id) async {
    var client = await helper.db;
    var result = await client
        .update(table, entity as Map, where: "id=?", whereArgs: [id]);
    return result;
  }
}
