import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';

abstract class NewTaskPresenter {
  String get title;
  String? get content;

  void addTask(
      {required TaskState state,
      required String title,
      required String content});
  bool validateTitle(String title);
  void validateContent(String content);
}
