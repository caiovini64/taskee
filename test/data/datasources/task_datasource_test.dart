import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/data/datasources/datasources.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';

import '../../mocks.dart';

class CacheStorageSpy extends Mock implements CacheStorage {}

void main() {
  late CacheStorage storage;
  late ITaskDatasource datasource;

  setUp(() {
    storage = CacheStorageSpy();
    when(() => storage.read(any())).thenAnswer((_) async => kTaskMapJson);
    datasource = LocalTaskDatasource(storage: storage);
  });

  group('create', () {
    test('should return a String when calls to storage succeed', () async {
      when(() =>
              storage.save(key: any(named: 'key'), value: any(named: 'value')))
          .thenAnswer((_) async => true);
      final result = await datasource.create(kTaskParameters);
      expect(result, isA<String>());
    });
  });

  group('delete', () {
    test('should call storage read method', () async {
      when(() => storage.read(any())).thenAnswer((_) async => kTaskMapJson);
      when(() =>
              storage.save(key: any(named: 'key'), value: any(named: 'value')))
          .thenAnswer((_) async => true);
      await datasource.delete(kTaskEntity);
      verify(() => storage.read('tasks'));
    });
  });
}
