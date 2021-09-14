import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';
import 'package:new_taskee/domain/repositories/repositories.dart';

class TaskRepository implements ITaskRepository {
  final ITaskDatasource datasource;
  TaskRepository(this.datasource);

  @override
  Future<Either<DomainError, List<TaskEntity>>> read() async {
    try {
      final result = datasource.read();
      return right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }

  @override
  Future<Either<DomainError, String>> create(TaskParameters parameters) async {
    try {
      final result = await datasource.create(parameters);
      return right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }

  @override
  Future<Either<DomainError, bool>> delete(TaskParameters parameters) async {
    try {
      final result = await datasource.delete(parameters);
      return Right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }

  @override
  Future<Either<DomainError, String>> update(TaskParameters parameters) async {
    try {
      final result = await datasource.update(parameters);
      return right(result);
    } on CacheException {
      return Left(DomainError.cacheFailure);
    }
  }
}
