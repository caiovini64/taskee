abstract class CacheStorage {
  void save({required String key, required dynamic value});
  String? read(String key);
  void update(String key);
  void delete(String key);
}
