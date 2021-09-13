import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:new_taskee/data/repositories/repositories.dart';
import 'package:new_taskee/domain/datasources/task_datasource.dart';
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
  });
}
