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
  late String value;

  setUp(() {
    sharedPreferences = SharedPreferencesSpy();
    storage = SharedPreferencesAdapter(sharedPreferences);
    key = faker.internet.random.string(3);
    value = faker.internet.random.string(3);
  });

  group('read', () {
    test('should return a String', () {
      when(() => sharedPreferences.getString(any()))
          .thenAnswer((_) => kTaskListJson);
      final result = storage.read(key);
      expect(result, kTaskListJson);
    });
  });

  group('delete', () {
    test('should return true when succeed', () async {
      when(() => sharedPreferences.remove(any())).thenAnswer((_) async => true);
      final result = await storage.delete(key);
      expect(result, true);
      verify(() => sharedPreferences.remove(key));
    });

    test('should return false when dont succeed', () async {
      when(() => sharedPreferences.remove(any()))
          .thenAnswer((_) async => false);
      final result = await storage.delete(key);
      expect(result, false);
      verify(() => sharedPreferences.remove(key));
    });
  });

  group('save', () {
    test('should return true when succeed', () async {
      when(() => sharedPreferences.setString(any(), any()))
          .thenAnswer((_) async => true);
      final result = await storage.save(key: key, value: value);
      expect(result, true);
      verify(() => sharedPreferences.setString(key, value));
    });

    test('should return false when dont succeed', () async {
      when(() => sharedPreferences.setString(any(), any()))
          .thenAnswer((_) async => false);
      final result = await storage.save(key: key, value: value);
      expect(result, false);
      verify(() => sharedPreferences.setString(key, value));
    });
  });
}
