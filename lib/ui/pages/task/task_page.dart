import 'package:flutter/material.dart';
import 'package:new_taskee/ui/pages/task/task_viewmodel.dart';
import 'components/components.dart';

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
  TaskViewModel(title: 'aaaaaaaaaaaa', content: 'bbbbbbbbbb', state: 'state'),
  TaskViewModel(title: 'aaaaaaaaa', content: 'dddddddddd', state: 'state'),
];
