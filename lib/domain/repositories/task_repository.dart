import 'package:dartz/dartz.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';

abstract class ITaskRepository {
  Future<Either<DomainError, String>> create(TaskParameters parameters);
  Future<Either<DomainError, List<TaskEntity>>> read();
  Future<Either<DomainError, String>> update(TaskEntity taskEntity);
  Future<Either<DomainError, void>> delete(TaskParameters parameters);
}
