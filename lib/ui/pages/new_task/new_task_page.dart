import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/cubit/cubit_new_task_presenter.dart';
import 'package:new_taskee/ui/components/app_theme.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/pages/new_task/components/content_input.dart';
import 'package:new_taskee/ui/pages/new_task/components/create_task_button_widget.dart';
import 'package:new_taskee/ui/pages/new_task/components/task_input.dart';
import 'package:new_taskee/ui/pages/new_task/components/page_title.dart';

class NewTaskPage extends StatefulWidget {
  final TaskState taskState;
  final CubitNewTaskPresenter presenter;
  NewTaskPage({Key? key, required this.presenter, required this.taskState})
      : super(key: key);

  @override
  _NewTaskPageState createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return BlocProvider<CubitNewTaskPresenter>(
      create: (context) => widget.presenter,
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
              TaskInput(controller: titleController),
              SizedBox(height: 40),
              ContentInput(controller: contentController),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CreateTaskButtonWidget.principal(
            onPressed: () {
              widget.presenter.addTask(
                  title: titleController.text,
                  content: contentController.text,
                  state: widget.taskState);
            },
            child: Text(
              'Create new task',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
