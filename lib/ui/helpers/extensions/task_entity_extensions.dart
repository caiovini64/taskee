import 'package:new_taskee/domain/entities/entities.dart';
import 'package:new_taskee/ui/pages/task/task_viewmodel.dart';

extension TaskEntityExtensions on TaskEntity {
  TaskViewModel toViewModel() => TaskViewModel(
        id: id,
        content: content,
        title: title,
        state: state,
      );
}
