import 'package:flutter/material.dart';
import 'package:new_taskee/ui/components/app_theme.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/pages/home/home_viewmodel.dart';

import 'components.dart';

class TaskListWidget extends StatelessWidget {
  final List<HomeViewModel> taskList;
  const TaskListWidget({required this.taskList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 90.0),
        child: Visibility(
          visible: taskList.isNotEmpty,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: taskList.length,
            itemBuilder: (BuildContext context, index) {
              final task = taskList[index];
              return GestureDetector(
                onTap: () {},
                child: TaskCard(task: task),
              );
            },
          ),
          replacement: Container(),
        ),
      ),
    );
  }
}
