import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/task/cubit_task_presenter.dart';
import 'package:new_taskee/ui/pages/task/components/task_list_component.dart';

class TaskPage extends StatefulWidget {
  final CubitTaskPresenter presenter;
  const TaskPage({Key? key, required this.presenter}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => widget.presenter,
      child: PageView(
        controller: pageController,
        children: [
          TaskListComponent(),
          TaskListComponent(),
          TaskListComponent(),
        ],
      ),
    );
  }
}
