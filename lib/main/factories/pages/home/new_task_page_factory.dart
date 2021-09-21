import 'package:new_taskee/main/factories/presentation/cubit_new_task_presenter_factory.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/pages/new_task/new_task_page.dart';

NewTaskPage makeNewTaskPage(TaskState taskState) =>
    NewTaskPage(presenter: makeCubitNewTaskPresenter(), taskState: taskState);
