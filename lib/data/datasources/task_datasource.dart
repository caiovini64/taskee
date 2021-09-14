import 'dart:convert';

import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
import 'package:new_taskee/data/helpers/mixins/entity_manager.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';

class TaskDatasource with EntityManager implements ITaskDatasource {
  final CacheStorage cacheStorage;
  TaskDatasource(this.cacheStorage);

  @override
  Future<String> create(TaskEntity taskEntity) async {
    final data = await cacheStorage.save(
      key: 'tasks/{$taskEntity.id}',
      value: entityToJson(taskEntity),
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
  Future<String> update(TaskEntity taskEntity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(TaskEntity taskEntity) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
