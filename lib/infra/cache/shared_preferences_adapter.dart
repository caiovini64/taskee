import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesAdapter implements CacheStorage {
  final SharedPreferences sharedPreferences;
  SharedPreferencesAdapter(this.sharedPreferences);

  @override
  String? read(String key) {
    final result = sharedPreferences.getString(key);
    return result;
  }

  @override
  Future<bool> delete(String key) async {
    final result = await sharedPreferences.remove(key);
    return result;
  }

  @override
  Future<bool> save({required String key, required value}) async {
    final result = await sharedPreferences.setString(key, value);
    return result;
  }

  @override
  Future<bool> update({required String key, required dynamic value}) async {
    await delete(key);
    final result = await save(key: key, value: value);
    return result;
  }
}
