import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:new_taskee/data/helpers/helpers.dart';
import 'package:new_taskee/data/repositories/repositories.dart';
import 'package:new_taskee/domain/datasources/task_datasource.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';
import 'package:new_taskee/domain/repositories/repositories.dart';
import '../../mocks.dart';

class TaskDatasourceSpy extends Mock implements ITaskDatasource {}

void main() {
  late ITaskRepository repository;
  late ITaskDatasource datasource;

  setUp(() {
    datasource = TaskDatasourceSpy();
    repository = TaskRepository(datasource);
  });

  group('get', () {
    test('should return a TaskEntity list when calls to the datasource succeed',
        () async {
      when(() => datasource.get()).thenAnswer((_) async => kListTaskEntity);
      final result = await repository.get();
      expect(result, Right(kListTaskEntity));
    });
    test(
        'should return a DomainError.cacheFailure when calls to the datasource throws a CacheException',
        () async {
      when(() => datasource.get()).thenThrow(CacheException());
      final result = await repository.get();
      expect(result, Left(DomainError.cacheFailure));
    });
  });
}
