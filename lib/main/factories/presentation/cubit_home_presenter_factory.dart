import 'package:new_taskee/main/factories/repositories/task_repository_factory.dart';
import 'package:new_taskee/presentation/presenters/home/cubit_home_presenter.dart';

CubitHomePresenter makeCubitHomePresenter() =>
    CubitHomePresenter(repository: makeTaskRepository());
