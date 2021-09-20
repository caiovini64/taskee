part of 'cubit_new_task_presenter.dart';

abstract class NewTaskState extends Equatable {
  const NewTaskState();

  @override
  List<Object> get props => [];
}

class Initial extends NewTaskState {}

class ValidationError extends NewTaskState {}
