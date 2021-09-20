import 'package:flutter/material.dart';
import 'package:new_taskee/presentation/presenters/cubit/cubit_new_task_presenter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskInput extends StatelessWidget {
  const TaskInput({Key? key}) : super(key: key);

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
    ;
  }
}
