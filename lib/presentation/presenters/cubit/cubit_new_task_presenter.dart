import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:new_taskee/ui/pages/new_task/new_task_presenter.dart';

part 'cubit_new_task_state.dart';

class NewTaskCubit extends Cubit<NewTaskState> implements NewTaskPresenter {
  NewTaskCubit() : super(NewTaskInitial());

  @override
  TextEditingController get contentController => TextEditingController();

  @override
  GlobalKey<FormState> get formKey => GlobalKey<FormState>();

  @override
  TextEditingController get titleController => TextEditingController();

  @override
  Future<void> addTask() {
    // TODO: implement addTask
    throw UnimplementedError();
  }
}
