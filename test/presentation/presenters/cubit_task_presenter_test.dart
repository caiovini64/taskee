import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:new_taskee/domain/repositories/repositories.dart';
import 'package:new_taskee/presentation/presenters/task/cubit_task_presenter.dart';
import 'package:new_taskee/ui/pages/task/task_presenter.dart';

import '../../mocks.dart';

class TaskRepositorySpy extends Mock implements ITaskRepository {}

void main() {
  late TaskPresenter presenter;
  late ITaskRepository repository;

  setUp(() {
    repository = TaskRepositorySpy();
    presenter = CubitTaskPresenter(repository);
  });

  group('getTasks', () {
    blocTest(
      'should emit a [Done(List<TaskViewModel>)] when succeeds',
      setUp: () {
        when(() => repository.read())
            .thenAnswer((_) async => Right(kListTaskEntity));
      },
      build: () => presenter as CubitTaskPresenter,
      act: (cubit) => presenter.getTasks(),
      expect: () => [Loading(), Done(kTaskListViewModel)],
    );
  });
}
