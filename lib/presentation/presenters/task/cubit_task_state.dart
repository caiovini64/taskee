part of 'cubit_task_presenter.dart';

abstract class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object> get props => [];
}

class Initial extends TaskState {}

class Loading extends TaskState {}

class Error extends TaskState {
  final String message;
  Error(this.message);
}

class Done extends TaskState {
  final List<TaskViewModel> taskList;
  Done(this.taskList);
}
