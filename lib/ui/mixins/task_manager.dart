import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/pages/home/home_viewmodel.dart';

mixin TaskManager {
  taskFilter({
    required List<HomeViewModel> taskList,
    required TaskState taskState,
  }) {
    return taskList
        .where((element) => element.state.contains(taskState.description))
        .toList();
  }
}
