import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:new_taskee/domain/helpers/errors/domain_error.dart';
import 'package:new_taskee/domain/repositories/repositories.dart';
import 'package:new_taskee/ui/components/slide_animation.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/pages/home/home_presenter.dart';
import 'package:new_taskee/ui/pages/home/home_viewmodel.dart';
import 'package:new_taskee/ui/pages/new_task/new_task_page.dart';

part 'cubit_home_state.dart';

class CubitHomePresenter extends Cubit<HomeState> implements HomePresenter {
  final ITaskRepository repository;
  CubitHomePresenter({required this.repository}) : super(Initial()) {
    getTasks();
  }

  @override
  Future<void> getTasks() async {
    List<HomeViewModel> _taskListViewModel;
    emit(Loading());
    final result = await repository.read();
    result.fold(
      (failure) => emit(Error(failure.message)),
      (data) => {
        _taskListViewModel = data
            .map((task) => HomeViewModel(
                id: task.id,
                title: task.title,
                content: task.content,
                state: task.state))
            .toList(),
        emit(Done(kTaskViewModelList)),
      },
    );
  }

  @override
  Future<void> updateTaskState() {
    // TODO: implement updateTaskState
    throw UnimplementedError();
  }

  @override
  void goToAddTaskPage(BuildContext context, TaskState taskState) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 400),
        transitionsBuilder: (_, animation, __, child) {
          return SlideTransition(
            position: slideAnimation(animation),
            child: child,
          );
        },
        pageBuilder: (_, animation, __) => NewTaskPage(),
      ),
    );
  }
}

final kTaskViewModel1 = HomeViewModel(
  id: 'id',
  title: 'todo',
  content: 'content',
  state: 'to do',
);

final kTaskViewModel2 = HomeViewModel(
  id: 'id',
  title: 'in progress',
  content: 'content',
  state: 'in progress',
);

final kTaskViewModel3 = HomeViewModel(
  id: 'id',
  title: 'done',
  content: 'content',
  state: 'done',
);
final kTaskViewModel4 = HomeViewModel(
  id: 'id',
  title: 'done2',
  content: 'content',
  state: 'done',
);

final kTaskViewModelList = [
  kTaskViewModel1,
  kTaskViewModel2,
  kTaskViewModel3,
  kTaskViewModel4
];
