import 'dart:convert';

import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
import 'package:new_taskee/data/models/models.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';

class LocalTaskDatasource implements ITaskDatasource {
  final CacheStorage storage;
  LocalTaskDatasource(this.storage) {
    _init();
  }

  @override
  Future<String> create(TaskParameters parameters) {
    final data = TaskModel.fromDomain(parameters);
    return update(data.toEntity());
  }

  @override
  List<TaskEntity> read() {
    final data = storage.read('tasks');
    if (data != null) {
      return _mapToEntity(data);
    } else if (data == null) {
      return [];
    } else {
      throw CacheException();
    }
  }

  @override
  Future<String> update(TaskEntity entity) async {
    final jsonCache = jsonDecode(storage.read('tasks')!);
    final response = await storage.save(
      key: 'tasks',
      value: jsonEncode(
          jsonCache..[entity.id] = TaskModel.fromEntity(entity).toJson()),
    );
    if (response) {
      return entity.id;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<bool> delete(TaskEntity entity) async {
    final Map jsonCache = jsonDecode(storage.read('tasks')!);
    jsonCache.remove(entity.id);
    final result = await storage.save(
      key: 'tasks',
      value: jsonEncode(jsonCache),
    );
    return result ? result : throw CacheException();
  }

  void _init() {
    final data = storage.read('tasks');
    if (data == null) storage.save(key: 'tasks', value: '{}');
  }

  List<TaskEntity> _mapToEntity(dynamic list) =>
      list.map((entity) => TaskModel.fromEntity(entity).toJson()).toList();
}
