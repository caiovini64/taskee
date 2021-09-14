import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/data/datasources/datasources.dart';
import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
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
    test('should return a list of TaskEntity when calls to storage succeed',
        () async {
      when(() =>
              storage.save(key: any(named: 'key'), value: any(named: 'value')))
          .thenAnswer((_) async => true);
      final result = await datasource.create(kTaskEntity);
      expect(result, kTaskEntity);
    });

    test('should throw a CacheException when calls to storage dont succeed',
        () async {
      when(() =>
              storage.save(key: any(named: 'key'), value: any(named: 'value')))
          .thenAnswer((_) async => false);
      final result = datasource.create(kTaskEntity);
      expect(result, throwsA(isA<CacheException>()));
    });
  });
}
