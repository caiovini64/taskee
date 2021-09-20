import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/home/cubit_home_presenter.dart';
import 'package:new_taskee/ui/components/loading_widget.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/mixins/task_manager.dart';
import 'package:new_taskee/ui/pages/home/components/add_button_widget.dart';
import 'components.dart';

class TaskListComponent extends StatelessWidget with TaskManager {
  final TaskState taskState;
  const TaskListComponent({Key? key, required this.taskState})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CubitHomePresenter, HomeState>(
        builder: (context, state) {
          return Stack(
            children: [
              BackgroundContainerWidget(
                taskState: taskState,
                child: state is Done
                    ? TaskListWidget(
                        taskList: taskFilter(
                          taskList: state.taskList,
                          taskState: taskState,
                        ),
                      )
                    : LoadingWidget(),
              ),
              AddButtonWidget(
                onTap: () {},
                index: taskState.index,
              ),
            ],
          );
        },
      ),
    );
  }
}
