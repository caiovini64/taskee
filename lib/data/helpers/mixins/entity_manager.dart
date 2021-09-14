import 'dart:convert';

import 'package:new_taskee/data/models/models.dart';
import 'package:new_taskee/domain/entities/entities.dart';

mixin EntityManager {
  String listTojson(List<TaskEntity> list) => jsonEncode(
      list.map((entity) => TaskModel.fromEntity(entity).toJson()).toList());

  List<TaskEntity> mapToEntity(dynamic list) =>
      list.map((entity) => TaskModel.fromEntity(entity).toJson()).toList();
}
