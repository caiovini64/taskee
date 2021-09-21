import 'package:new_taskee/main/factories/repositories/task_repository_factory.dart';
import 'package:new_taskee/presentation/presenters/new_task/cubit_new_task_presenter.dart';
import 'package:new_taskee/validations/validators/title_validation.dart';

CubitNewTaskPresenter makeCubitNewTaskPresenter() => CubitNewTaskPresenter(
      titleValidation: TitleValidation(),
      repository: makeTaskRepository(),
    );
