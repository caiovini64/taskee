import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:new_taskee/data/helpers/helpers.dart';
import 'package:new_taskee/data/repositories/repositories.dart';
import 'package:new_taskee/domain/datasources/task_datasource.dart';
import 'package:new_taskee/domain/entities/entities.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';
import 'package:new_taskee/domain/repositories/repositories.dart';
import '../../mocks.dart';

class TaskDatasourceSpy extends Mock implements ITaskDatasource {}

class TaskEntityFake extends Fake implements TaskEntity {}

void main() {
  late ITaskRepository repository;
  late ITaskDatasource datasource;
  late String key;

  setUp(() {
    datasource = TaskDatasourceSpy();
    repository = TaskRepository(datasource);
    key = faker.internet.random.string(3);
  });

  setUpAll(() {
    registerFallbackValue(TaskEntityFake());
  });

  group('read', () {
    test('should return a TaskEntity list when calls to the datasource succeed',
        () async {
      when(() => datasource.read()).thenAnswer((_) => kListTaskEntity);
      final result = await repository.read();
      expect(result, Right(kListTaskEntity));
      verify(() => datasource.read()).called(1);
    });
    test(
        'should return a DomainError.cacheFailure when calls to the datasource throws a CacheException',
        () async {
      when(() => datasource.read()).thenThrow(CacheException());
      final result = await repository.read();
      expect(result, Left(DomainError.cacheFailure));
      verify(() => datasource.read()).called(1);
    });
  });

  group('create', () {
    test(
        'should return a list of TaskEntity when calls to the datasource succeed',
        () async {
      when(() => datasource.create(any())).thenAnswer((_) async => kTaskEntity);
      final result = await repository.create(kTaskEntity);
      expect(result, Right(kTaskEntity));
      verify(() => datasource.create(kTaskEntity)).called(1);
    });

    test(
        'should return a DomainError.cacheFailure when calls to the datasource throws a CacheException',
        () async {
      when(() => datasource.create(any())).thenThrow(CacheException());
      final result = await repository.create(kTaskEntity);
      expect(result, Left(DomainError.cacheFailure));
      verify(() => datasource.create(kTaskEntity)).called(1);
    });
  });

  group('delete', () {
    test('should return true when calls to the datasource succeed', () async {
      when(() => datasource.delete(any())).thenAnswer((_) async => true);
      final result = await repository.delete(kTaskEntity);
      expect(result, Right(true));
      verify(() => datasource.delete(kTaskEntity)).called(1);
    });

    test(
        'should return a DomainError.cacheFailure when calls to the datasource throws a CacheException',
        () async {
      when(() => datasource.delete(any())).thenThrow(CacheException());
      final result = await repository.delete(kTaskEntity);
      expect(result, Left(DomainError.cacheFailure));
      verify(() => datasource.delete(kTaskEntity)).called(1);
    });
  });

  group('update', () {
    test('should return a TaskEntity when calls to the datasource succeed',
        () async {
      when(() => datasource.update(any())).thenAnswer((_) async => kTaskEntity);
      final result = await repository.update(kTaskEntity);
      expect(result, Right(kTaskEntity));
      verify(() => datasource.update(kTaskEntity)).called(1);
    });

    test(
        'should return a DomainError.cacheFailure when calls to the datasource throws a CacheException',
        () async {
      when(() => datasource.update(any())).thenThrow(CacheException());
      final result = await repository.update(kTaskEntity);
      expect(result, Left(DomainError.cacheFailure));
      verify(() => datasource.update(kTaskEntity)).called(1);
    });
  });
}
