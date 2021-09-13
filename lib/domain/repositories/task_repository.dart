import 'package:dartz/dartz.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';

abstract class ITaskRepository {
  Future<Either<DomainError, List<TaskEntity>>> get();
  Future<Either<DomainError, TaskEntity>> add(TaskEntity taskEntity);
  Future<Either<DomainError, TaskEntity>> delete(TaskEntity taskEntity);
  Future<Either<DomainError, TaskEntity>> update(TaskEntity taskEntity);
}
