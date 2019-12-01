import 'package:neka/datalayer/generic/database_helper.dart';

abstract class AbstratcBaseRepo<T> {
  String table;
  DBHelper helper;

  Future<int> insert(T entity);

  Future<int> update(T entity, int id);

  Future<int> delete(int id);

  Future<T> get(int id);

  Future<List<T>> getList({String where, List args});
}
