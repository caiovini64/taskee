import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_taskee/ui/pages/new_task/new_task_presenter.dart';

part 'cubit_new_task_state.dart';

class CubitNewTaskPresenter extends Cubit<NewTaskState>
    implements NewTaskPresenter {
  CubitNewTaskPresenter() : super(NewTaskInitial());

  @override
  Future<void> addTask() {
    // TODO: implement addTask
    throw UnimplementedError();
  }

  @override
  String? validateTitle(String title) {
    if (title.isEmpty) {
      return 'Please dont ask again';
    } else {
      return null;
    }
  }
}
