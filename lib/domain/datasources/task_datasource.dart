import 'package:new_taskee/domain/entities/entities.dart';

abstract class ITaskDatasource {
  Future<List<TaskEntity>> get();
  Future<TaskEntity> add(TaskEntity taskEntity);
  Future<void> delete(TaskEntity taskEntity);
  Future<TaskEntity> update(TaskEntity taskEntity);
}
