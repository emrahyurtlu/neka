abstract class BaseService<T> {
  String collection;

  Future<void> insert(Map data);

  Future<void> update(Map data, String id);

  Future<void> delete(String id);

  Future<String> get(String id);

  Future<List<String>> getList();
}