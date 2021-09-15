import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/task/cubit_task_presenter.dart';
import 'package:new_taskee/ui/pages/task/task_viewmodel.dart';
import 'components/components.dart';

class TaskPage extends StatelessWidget {
  final CubitTaskPresenter presenter;
  const TaskPage({Key? key, required this.presenter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => presenter,
      child: Scaffold(
        body: BlocBuilder<CubitTaskPresenter, TaskState>(
          builder: (context, state) {
            if (state is Done) {
              return BackgroundContainerWidget(
                child: TaskListWidget(
                  taskList: state.taskList,
                ),
              );
            }
            return CircularProgressIndicator();
          },
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
