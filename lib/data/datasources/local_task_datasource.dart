import 'dart:convert';

import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
import 'package:new_taskee/data/helpers/mixins/entity_manager.dart';
import 'package:new_taskee/data/models/models.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';
import 'package:new_taskee/domain/entities/task_entity.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';

class LocalTaskDatasource with EntityManager implements ITaskDatasource {
  final CacheStorage storage;
  LocalTaskDatasource(this.storage) {
    _init();
  }

  @override
  Future<String> create(TaskParameters parameters) async {
    final jsonCache = jsonDecode(storage.read('tasks')!);
    final data = TaskModel.fromDomain(parameters);
    final response = await storage.save(
      key: 'tasks',
      value: jsonEncode(jsonCache..[data.id] = data.toJson()),
    );
    if (response) {
      return data.id;
    } else {
      throw CacheException();
    }
  }

  @override
  List<TaskEntity> read() {
    final data = storage.read('tasks');
    if (data != null) {
      return mapToEntity(data);
    } else if (data == null) {
      return [];
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

  void _init() {
    final data = storage.read('tasks');
    if (data == null) storage.save(key: 'tasks', value: '{}');
  }
}
