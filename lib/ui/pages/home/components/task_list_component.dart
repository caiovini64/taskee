import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/home/cubit_home_presenter.dart';
import 'package:new_taskee/ui/components/loading_widget.dart';
import 'components.dart';

class TaskListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CubitHomePresenter, HomeState>(
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
