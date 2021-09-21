import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';

abstract class NewTaskPresenter {
  String get title;
  String get content;

  void addTask(TaskState state);
  void validateTitle(String title);
  void validateContent(String content);
}
