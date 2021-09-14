abstract class CacheStorage {
  Future<bool> save({required String key, required String value});
  String? read(String key);
  Future<bool> delete(String key);
}
