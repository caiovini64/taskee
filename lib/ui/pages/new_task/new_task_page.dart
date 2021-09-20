import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/cubit/cubit_new_task_presenter.dart';
import 'package:new_taskee/ui/pages/new_task/components/task_field_widget.dart';

class NewTaskPage extends StatelessWidget {
  final CubitNewTaskPresenter presenter;
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  NewTaskPage({Key? key, required this.presenter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => presenter,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20,
            top: 10,
            bottom: 20,
          ),
          child: Form(
            key: _formKey,
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
                  validator: (String) {},
                ),
                SizedBox(height: 40),
                TaskFieldWidget(
                  labelText: 'Content',
                  controller: contentController,
                  semanticsLabel: 'Content field',
                  validator: (String) {},
                  height: 150,
                  maxLines: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
