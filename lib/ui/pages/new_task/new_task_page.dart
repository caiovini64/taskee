import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/cubit/cubit_new_task_presenter.dart';
import 'package:new_taskee/ui/pages/new_task/components/new_task_form_widget.dart';

class NewTaskPage extends StatelessWidget {
  final CubitNewTaskPresenter presenter;
  static final _formKey = GlobalKey<FormState>();

  NewTaskPage({Key? key, required this.presenter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitNewTaskPresenter>(
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
          child: NewTaskForm(
            titleController: presenter.titleController,
            contentController: presenter.contentController,
            formKey: _formKey,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
