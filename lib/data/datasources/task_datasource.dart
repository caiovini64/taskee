import 'dart:convert';

import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';

class TaskDatasource implements ITaskDatasource {
  final CacheStorage cacheStorage;
  TaskDatasource(this.cacheStorage);

  @override
  Future<TaskEntity> create(TaskEntity taskEntity) async {
    final result = await cacheStorage.save(
      key: taskEntity.id,
      value: jsonEncode(taskEntity),
    );
    if (result) {
      return taskEntity;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<TaskEntity>> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<TaskEntity> update(TaskEntity taskEntity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(TaskEntity taskEntity) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
