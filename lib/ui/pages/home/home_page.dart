import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_taskee/presentation/presenters/home/cubit_home_presenter.dart';
import 'package:new_taskee/ui/helpers/enums/task_state_enum.dart';
import 'package:new_taskee/ui/pages/home/components/components.dart';

class HomePage extends StatefulWidget {
  final CubitHomePresenter presenter;
  const HomePage({Key? key, required this.presenter}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          TaskListComponent(taskState: TaskState.toDo),
          TaskListComponent(taskState: TaskState.inProgress),
          TaskListComponent(taskState: TaskState.done),
        ],
      ),
    );
  }
}
