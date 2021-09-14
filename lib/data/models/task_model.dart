import 'dart:math';

import 'package:new_taskee/domain/entities/entities.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';

class TaskModel {
  final String id;
  final String title;
  final String content;
  final String state;

  TaskModel({
    required this.id,
    required this.title,
    required this.content,
    required this.state,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      state: json['state'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'content': content,
      'state': state,
    };
  }

  factory TaskModel.fromDomain(TaskParameters parameters) {
    var rng = new Random();
    return TaskModel(
      id: List.generate(12, (_) => rng.nextInt(100)).toString(),
      title: parameters.title,
      content: parameters.content,
      state: parameters.state,
    );
  }

  TaskEntity toEntity() {
    return TaskEntity(
      id: this.id,
      title: this.title,
      content: this.content,
      state: this.state,
    );
  }

  factory TaskModel.fromEntity(TaskEntity taskEntity) {
    return TaskModel(
      id: taskEntity.id,
      title: taskEntity.title,
      content: taskEntity.content,
      state: taskEntity.state,
    );
  }
}
