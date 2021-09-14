import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
import 'package:new_taskee/data/helpers/mixins/entity_manager.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';

class LocalTaskDatasource with EntityManager implements ITaskDatasource {
  final CacheStorage cacheStorage;
  LocalTaskDatasource(this.cacheStorage);

  @override
  Future<String> create(TaskParameters parameters) async {
    final data = await cacheStorage.save(
      key: 'tasks/',
      value: entityToJson(parametersToEntity(parameters, '')),
    );
    if (data) {
      return '';
    } else {
      throw CacheException();
    }
  }

  @override
  List<TaskEntity> read() {
    final data = cacheStorage.read('tasks');
    if (data != null) {
      return mapToEntity(data);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<String> update(TaskParameters parameters) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(TaskParameters parameters) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
