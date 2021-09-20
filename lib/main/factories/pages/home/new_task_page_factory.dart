import 'package:new_taskee/main/factories/presentation/cubit_new_task_presenter_factory.dart';
import 'package:new_taskee/ui/pages/new_task/new_task_page.dart';

NewTaskPage makeNewTaskPage() =>
    NewTaskPage(presenter: makeCubitNewTaskPresenter());
