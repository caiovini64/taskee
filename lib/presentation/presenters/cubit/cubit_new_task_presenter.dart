import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_taskee/ui/pages/new_task/new_task_presenter.dart';
import 'package:new_taskee/validations/protocols/field_validation.dart';

part 'cubit_new_task_state.dart';

class CubitNewTaskPresenter extends Cubit<NewTaskState>
    implements NewTaskPresenter {
  final FieldValidation titleValidation;
  CubitNewTaskPresenter({
    required this.titleValidation,
  }) : super(Initial());

  late String _title;
  late String _content;

  String get content => _content;
  String get title => _title;

  @override
  Future<void> addTask() {
    // TODO: implement addTask
    throw UnimplementedError();
  }

  @override
  void validateTitle(String title) {
    _title = title;
    final validation = titleValidation(title);
    if (!validation) emit(ValidationError());
  }

  @override
  void validateContent(String content) {
    _content = content;
  }
}
