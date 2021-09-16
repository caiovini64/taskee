import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';
import 'package:new_taskee/domain/repositories/repositories.dart';
import 'package:new_taskee/ui/pages/task/task_presenter.dart';
import 'package:new_taskee/ui/pages/task/task_viewmodel.dart';

part 'cubit_task_state.dart';

class CubitTaskPresenter extends Cubit<TaskState> implements TaskPresenter {
  final ITaskRepository repository;
  CubitTaskPresenter({required this.repository}) : super(Initial()) {
    getTasks();
  }

  @override
  Future<void> addTask() {
    // TODO: implement addTask
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTask() {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<void> getTasks() async {
    List<TaskViewModel> _taskListViewModel;
    emit(Loading());
    final result = await repository.read();
    result.fold(
      (failure) => emit(Error(failure.message)),
      (data) => {
        _taskListViewModel = data
            .map((task) => TaskViewModel(
                id: task.id,
                title: task.title,
                content: task.content,
                state: task.state))
            .toList(),
        emit(Done(_taskListViewModel)),
      },
    );
  }

  @override
  Future<void> updateTask() {
    // TODO: implement updateTask
    throw UnimplementedError();
  }

  @override
  Future<void> updateTaskState() {
    // TODO: implement updateTaskState
    throw UnimplementedError();
  }
}

final kTaskViewModel1 = TaskViewModel(
  id: 'id',
  title: 'todo',
  content: 'content',
  state: 'todo',
);

final kTaskViewModel2 = TaskViewModel(
  id: 'id',
  title: 'in progress',
  content: 'content',
  state: 'in progress',
);

final kTaskViewModel3 = TaskViewModel(
  id: 'id',
  title: 'done',
  content: 'content',
  state: 'done',
);
