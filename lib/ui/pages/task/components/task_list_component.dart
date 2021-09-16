import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/task/cubit_task_presenter.dart';
import 'package:new_taskee/ui/components/loading_widget.dart';
import 'package:new_taskee/ui/pages/task/task_viewmodel.dart';
import 'components.dart';

class TaskListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CubitTaskPresenter, TaskState>(
        builder: (context, state) {
          return BackgroundContainerWidget(
            child: state is Done
                ? TaskListWidget(taskList: state.taskList)
                : LoadingWidget(),
          );
        },
      ),
    );
  }
}
