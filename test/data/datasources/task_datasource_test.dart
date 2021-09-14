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
    datasource = TaskDatasource(storage);
  });

  group('create', () {
    test('should return a TaskEntity when calls to storage succeed', () async {
      when(() =>
              storage.save(key: any(named: 'key'), value: any(named: 'value')))
          .thenAnswer((_) async => true);
      final result = await datasource.create(kTaskEntity);
      expect(result, kTaskEntity);
    });
  });
}
