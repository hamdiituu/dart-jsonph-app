abstract class BaseService<T> {
  Future<List<T>> getAll();
  Future<T> getById(int id);
}
