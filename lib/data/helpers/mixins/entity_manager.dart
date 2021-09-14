import 'dart:convert';

import 'package:new_taskee/data/models/models.dart';
import 'package:new_taskee/domain/entities/entities.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';

mixin EntityManager {
  String listTojson(List<TaskEntity> list) => jsonEncode(
      list.map((entity) => TaskModel.fromEntity(entity).toJson()).toList());

  List<TaskEntity> mapToEntity(dynamic list) =>
      list.map((entity) => TaskModel.fromEntity(entity).toJson()).toList();

  String entityToJson(TaskEntity entity) =>
      jsonEncode(TaskModel.fromEntity(entity).toJson());

  TaskEntity parametersToEntity(TaskParameters parameters, id) => TaskEntity(
      id: id,
      title: parameters.title,
      content: parameters.content,
      state: parameters.state);
}
