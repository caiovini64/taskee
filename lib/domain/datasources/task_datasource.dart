import 'package:new_taskee/domain/entities/entities.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';

abstract class ITaskDatasource {
  Future<String> create(TaskParameters parameters);
  List<TaskEntity> read();
  Future<String> update(TaskParameters parameters);
  Future<bool> delete(TaskParameters parameters);
}
