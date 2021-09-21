import 'package:new_taskee/presentation/presenters/new_task/cubit_new_task_presenter.dart';
import 'package:new_taskee/validations/validators/title_validation.dart';

CubitNewTaskPresenter makeCubitNewTaskPresenter() =>
    CubitNewTaskPresenter(titleValidation: TitleValidation());
