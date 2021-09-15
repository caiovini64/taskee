import 'package:localstorage/localstorage.dart';
import 'package:new_taskee/data/cache/cache_storage.dart';

class LocalStorageAdapter implements CacheStorage {
  final LocalStorage localStorage;
  LocalStorageAdapter(this.localStorage);

  @override
  Future<void> save({required String key, required String value}) async {
    await localStorage.deleteItem(key);
    await localStorage.setItem(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await localStorage.deleteItem(key);
  }

  @override
  Future<String?> read(String key) async {
    return await localStorage.getItem(key);
  }
}
