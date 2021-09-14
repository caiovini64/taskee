abstract class CacheStorage {
  Future<bool> save({required String key, required String value});
  String? read(String key);
  Future<bool> update({required String key, required dynamic value});
  Future<bool> delete(String key);
}
