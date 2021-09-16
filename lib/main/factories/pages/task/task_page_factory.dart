import 'package:new_taskee/main/factories/presentation/cubit_task_presenter_factory.dart';
import 'package:new_taskee/ui/pages/task/task_page.dart';

TaskPage makeTaskPage() => TaskPage(presenter: makeCubitTaskPresenter());
