import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:new_taskee/data/models/task_model.dart';

import '../../mocks.dart';

void main() {
  test(
      'should return a TaskModel with the same parameters as the json it received',
      () {
    final taskModelFromJson = TaskModel.fromJson(jsonDecode(kTaskjson));
    expect(taskModelFromJson.toJson(), kTaskModel.toJson());
  });
}
