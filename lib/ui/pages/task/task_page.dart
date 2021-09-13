import 'package:flutter/material.dart';
import 'package:new_taskee/ui/pages/components/background_container_widget.dart';
import 'package:new_taskee/ui/pages/components/components.dart';
import 'package:new_taskee/ui/pages/task/task_viewmodel.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainerWidget(
        child: TaskListWidget(
          taskList: taskList,
        ),
      ),
    );
  }
}

final taskList = <TaskViewModel>[
  TaskViewModel(title: 'aaaaaaaaaaaa', subtitle: 'bbbbbbbbbb', state: 'state'),
  TaskViewModel(title: 'aaaaaaaaa', subtitle: 'dddddddddd', state: 'state'),
];
