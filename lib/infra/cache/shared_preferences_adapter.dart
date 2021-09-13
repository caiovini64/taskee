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
  void delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  void save({required String key, required value}) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  void update(String key) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
