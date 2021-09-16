import 'package:new_taskee/data/datasources/datasources.dart';
import 'package:new_taskee/main/factories/storages/local_storage_adapter_factory.dart';

LocalTaskDatasource makeLocalTaskDatasource() =>
    LocalTaskDatasource(storage: makeLocalStorageAdapter());
