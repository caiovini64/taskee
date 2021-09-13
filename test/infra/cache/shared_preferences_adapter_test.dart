import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/infra/cache/shared_preferences_adapter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../mocks.dart';

class SharedPreferencesSpy extends Mock implements SharedPreferences {}

void main() {
  late CacheStorage storage;
  late SharedPreferences sharedPreferences;
  late String key;

  setUp(() {
    sharedPreferences = SharedPreferencesSpy();
    storage = SharedPreferencesAdapter(sharedPreferences);
    key = faker.internet.random.string(3);
  });

  group('read', () {
    test('should return a String', () {
      when(() => sharedPreferences.getString(any()))
          .thenAnswer((_) => kTaskListJson);
      final result = storage.read(key);
      expect(result, kTaskListJson);
    });
  });
}
