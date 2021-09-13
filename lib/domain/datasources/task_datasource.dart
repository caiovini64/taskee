import 'package:new_taskee/domain/entities/entities.dart';

abstract class ITaskDatasource {
  Future<TaskEntity> create(TaskEntity taskEntity);
  Future<List<TaskEntity>> read();
  Future<TaskEntity> update(TaskEntity taskEntity);
  Future<void> delete(TaskEntity taskEntity);
}
