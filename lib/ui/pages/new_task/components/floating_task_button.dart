import 'package:flutter/material.dart';
import 'package:new_taskee/presentation/presenters/new_task/cubit_new_task_presenter.dart';
import 'package:new_taskee/ui/components/app_theme.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/pages/new_task/components/create_task_button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingTaskButton extends StatelessWidget {
  const FloatingTaskButton({
    Key? key,
    required this.titleController,
    required this.contentController,
    required this.taskState,
  }) : super(key: key);

  final TextEditingController titleController;
  final TextEditingController contentController;
  final TaskState taskState;

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<CubitNewTaskPresenter>();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CreateTaskButtonWidget.principal(
        onPressed: () {
          presenter.addTask(
              title: titleController.text,
              content: contentController.text,
              state: taskState);
        },
        child: Text(
          'Create new task',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: primaryColor),
        ),
      ),
    );
  }
}
