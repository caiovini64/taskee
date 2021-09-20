import 'package:flutter/material.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';

abstract class HomePresenter {
  Future<void> getTasks();
  Future<void> addTask();
  Future<void> updateTaskState();
  Future<void> updateTask();
  Future<void> deleteTask();
  void goToAddTaskPage(BuildContext context, TaskState taskState);
}
