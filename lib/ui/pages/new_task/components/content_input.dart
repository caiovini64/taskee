import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:new_taskee/presentation/presenters/new_task/cubit_new_task_presenter.dart';

class ContentInput extends StatelessWidget {
  final TextEditingController controller;
  const ContentInput({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<CubitNewTaskPresenter>();
    return Semantics(
      label: 'Content Input',
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          controller: controller,
          onChanged: presenter.validateContent,
          keyboardType: TextInputType.text,
          maxLines: 10,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            hintText: 'Content',
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
  }
}
