import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:new_taskee/domain/repositories/repositories.dart';

class TaskRepository implements ITaskRepository {
  final ITaskDatasource datasource;
  TaskRepository(this.datasource);

  @override
  Future<Either<DomainError, List<TaskEntity>>> read() async {
    try {
      final result = await datasource.read();
      return right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }

  @override
  Future<Either<DomainError, TaskEntity>> create(TaskEntity taskEntity) async {
    final result = await datasource.create(taskEntity);
    return right(result);
  }

  @override
  Future<Either<DomainError, void>> delete(TaskEntity taskEntity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<DomainError, TaskEntity>> update(TaskEntity taskEntity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
