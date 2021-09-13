abstract class CacheStorage {
  void save({required String key, required dynamic value});
  String? read(String key);
  void update(String key);
  Future<bool> delete(String key);
}
