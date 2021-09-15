import 'package:flutter/material.dart';
import 'package:new_taskee/presentation/presenters/task/cubit_task_presenter.dart';
import 'package:new_taskee/ui/pages/task/task_viewmodel.dart';
import 'components/components.dart';

class TaskPage extends StatelessWidget {
  final CubitTaskPresenter presenter;
  const TaskPage({Key? key, required this.presenter}) : super(key: key);

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
  TaskViewModel(
      id: '', title: 'aaaaaaaaaaaa', content: 'bbbbbbbbbb', state: 'state'),
  TaskViewModel(
      id: '', title: 'aaaaaaaaa', content: 'dddddddddd', state: 'state'),
];
