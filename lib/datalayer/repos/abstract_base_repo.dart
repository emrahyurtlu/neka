abstract class AbstractBaseRepo<T> {
  Future<int> insert(T entity);

  Future<int> update(T entity, int id);

  Future<int> delete(int id);

  Future<T> get(int id);

  Future<List<T>> getList({String where, List args});
}