import 'package:new_taskee/domain/entities/entities.dart';

abstract class ITaskDatasource {
  Future<TaskEntity> create(TaskEntity taskEntity);
  List<TaskEntity> read();
  Future<TaskEntity> update(TaskEntity taskEntity);
  Future<bool> delete(TaskEntity taskEntity);
}
