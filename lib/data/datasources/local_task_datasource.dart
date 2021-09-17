import 'dart:convert';
import 'package:new_taskee/data/cache/cache_storage.dart';
import 'package:new_taskee/data/helpers/exceptions/cache_exception.dart';
import 'package:new_taskee/data/models/models.dart';
import 'package:new_taskee/domain/datasources/datasources.dart';
import 'package:new_taskee/domain/entities/entities.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';

class LocalTaskDatasource implements ITaskDatasource {
  final CacheStorage storage;
  LocalTaskDatasource({required this.storage}) {
    _init();
  }

  @override
  Future<String> create(TaskParameters parameters) {
    final data = TaskModel.fromDomain(parameters);
    return update(data.toEntity());
  }

  @override
  Future<List<TaskEntity>> read() async {
    final taskList = <TaskEntity>[];
    final data = await storage.read('tasks');
    if (data != '{}') {
      final json = jsonDecode(data);
      json.forEach((key, value) {
        final task = TaskModel.fromJson(value).toEntity();
        print(task);
        taskList.add(task);
        print(taskList);
      });
      return taskList;
    } else if (data == '{}') {
      return [];
    } else {
      throw CacheException();
    }
  }

  @override
  Future<String> update(TaskEntity entity) async {
    final storageData = await storage.read('tasks');
    final jsonCache = jsonDecode(storageData);
    await storage.save(
      key: 'tasks',
      value: jsonEncode(
          jsonCache..[entity.id] = TaskModel.fromEntity(entity).toJson()),
    );
    return entity.id;
  }

  @override
  Future<void> delete(TaskEntity entity) async {
    final storageData = await storage.read('tasks');
    final Map jsonCache = jsonDecode(storageData);
    jsonCache.remove(entity.id);
    await storage.save(
      key: 'tasks',
      value: jsonEncode(jsonCache),
    );
  }

  void _init() async {
    final String? data = await storage.read('tasks');
    if (data == null) storage.save(key: 'tasks', value: '{}');
  }

  List<TaskEntity> _mapToEntity(dynamic list) =>
      list.value((entity) => TaskModel.fromEntity(entity).toJson()).toList();
}
