import 'package:dartz/dartz.dart';
import 'package:new_taskee/domain/entities/entities.dart';

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

  TaskEntity toEntity() {
    return TaskEntity(
      id: this.id,
      title: this.title,
      content: this.content,
      state: this.state,
    );
  }
}
