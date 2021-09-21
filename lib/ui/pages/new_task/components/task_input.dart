import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/new_task/cubit_new_task_presenter.dart';

class TaskInput extends StatelessWidget {
  final TextEditingController controller;
  const TaskInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<CubitNewTaskPresenter>();
    return BlocBuilder<CubitNewTaskPresenter, NewTaskState>(
      builder: (context, state) {
        return Semantics(
          label: 'Task Input',
          child: Container(
            padding: EdgeInsets.only(left: 10),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.text,
              maxLines: 5,
              onChanged: presenter.validateTitle,
              style: Theme.of(context).textTheme.bodyText1,
              decoration: InputDecoration(
                errorText:
                    state is ValidationError ? 'Please, type something.' : null,
                hintText: 'Title',
                hintStyle: Theme.of(context).textTheme.bodyText1,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            ),
          ),
        );
      },
    );
  }
}
