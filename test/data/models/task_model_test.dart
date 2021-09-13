import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:new_taskee/data/models/task_model.dart';

import '../../mocks.dart';

void main() {
  test(
      'should return a Json with the same parameters as the TaskModel it received',
      () {
    final taskModelToJson = kTaskModel.toJson();
    expect(taskModelToJson, jsonDecode(kTaskjson));
  });
  test(
      'should return a TaskModel with the same parameters as the json it received',
      () {
    final taskModelFromJson = TaskModel.fromJson(jsonDecode(kTaskjson));
    expect(taskModelFromJson.toJson(), kTaskModel.toJson());
  });

  test(
      'should return a TaskEntity with the same parameters as the TaskModel it received',
      () {
    final taskEntity = kTaskModel.toEntity();
    expect(taskEntity, kTaskEntity);
  });
}
