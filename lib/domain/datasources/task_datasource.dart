import 'package:new_taskee/domain/entities/entities.dart';

abstract class ITaskDatasource {
  Future<String> create(TaskEntity taskEntity);
  List<TaskEntity> read();
  Future<String> update(TaskEntity taskEntity);
  Future<bool> delete(TaskEntity taskEntity);
}
