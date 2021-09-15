import 'package:new_taskee/data/repositories/repositories.dart';
import 'package:new_taskee/main/factories/datasources/local_task_datasource_factory.dart';

TaskRepository makeTaskRepository() =>
    TaskRepository(datasource: makeLocalTaskDatasource());
