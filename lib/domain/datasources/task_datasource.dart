import 'package:new_taskee/domain/entities/entities.dart';

abstract class ITaskDatasource {
  Future<List<TaskEntity>> create(List<TaskEntity> listTaskEntity);
  List<TaskEntity> read(String key);
  Future<TaskEntity> update(TaskEntity taskEntity);
  Future<bool> delete(TaskEntity taskEntity);
}
