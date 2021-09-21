import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/cubit/cubit_new_task_presenter.dart';
import 'package:new_taskee/ui/pages/new_task/components/content_input.dart';
import 'package:new_taskee/ui/pages/new_task/components/create_task_button_widget.dart';
import 'package:new_taskee/ui/pages/new_task/components/task_input.dart';
import 'package:new_taskee/ui/pages/new_task/components/page_title.dart';

class NewTaskPage extends StatelessWidget {
  final CubitNewTaskPresenter presenter;
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
          child: Column(
            children: [
              PageTitle(),
              SizedBox(height: 40),
              TaskInput(),
              SizedBox(height: 40),
              ContentInput(),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CreateTaskButtonWidget.principal(
            onPressed: () {},
            child: const Text('Create new task'),
          ),
        ),
      ),
    );
  }
}
