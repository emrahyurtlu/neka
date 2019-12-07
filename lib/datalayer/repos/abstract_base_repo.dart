abstract class AbstractBaseRepo<T> {
  Future<int> insert(T model);

  Future<int> update(T model, int id);

  Future<int> delete(int id);

  Future<T> get(int id);

  Future<List<T>> getList({String where, List args});
}