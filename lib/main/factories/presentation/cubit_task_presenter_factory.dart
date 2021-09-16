import 'package:bloc/bloc.dart';
import 'package:new_taskee/main/factories/repositories/task_repository_factory.dart';
import 'package:new_taskee/presentation/presenters/task/cubit_task_presenter.dart';

CubitTaskPresenter makeCubitTaskPresenter() =>
    CubitTaskPresenter(repository: makeTaskRepository());
