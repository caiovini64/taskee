import 'package:flutter/material.dart';
import 'package:new_taskee/ui/pages/new_task/components/task_field_widget.dart';

class NewTaskForm extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController contentController;
  final GlobalKey<FormState> formKey;

  const NewTaskForm(
      {Key? key,
      required this.titleController,
      required this.contentController,
      required this.formKey})
      : super(key: key);
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Create new Task',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          SizedBox(height: 40),
          TaskFieldWidget(
            labelText: 'Title',
            controller: titleController,
            semanticsLabel: 'Title field',
          ),
          SizedBox(height: 40),
          TaskFieldWidget(
            labelText: 'Content',
            controller: contentController,
            semanticsLabel: 'Content field',
            height: 150,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
