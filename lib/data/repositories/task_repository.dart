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
  Future<Either<DomainError, List<TaskEntity>>> read(String key) async {
    try {
      final result = datasource.read(key);
      return right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }

  @override
  Future<Either<DomainError, List<TaskEntity>>> create(
      List<TaskEntity> listTaskEntity) async {
    try {
      final result = await datasource.create(listTaskEntity);
      return right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }

  @override
  Future<Either<DomainError, bool>> delete(TaskEntity taskEntity) async {
    try {
      final result = await datasource.delete(taskEntity);
      return Right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }

  @override
  Future<Either<DomainError, TaskEntity>> update(TaskEntity taskEntity) async {
    try {
      final result = await datasource.update(taskEntity);
      return right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }
}
