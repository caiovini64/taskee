import 'package:dartz/dartz.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';

abstract class ITaskRepository {
  Future<Either<DomainError, List<TaskEntity>>> create(
      List<TaskEntity> listTaskEntity);
  Future<Either<DomainError, List<TaskEntity>>> read(String key);
  Future<Either<DomainError, TaskEntity>> update(TaskEntity taskEntity);
  Future<Either<DomainError, void>> delete(TaskEntity taskEntity);
}
