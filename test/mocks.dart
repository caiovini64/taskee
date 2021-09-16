import 'package:new_taskee/data/models/models.dart';
import 'package:new_taskee/domain/entities/entities.dart';
import 'package:new_taskee/domain/helpers/parameters/task_parameters.dart';
import 'package:new_taskee/ui/pages/task/task_viewmodel.dart';

final kTaskjson =
    '{"state":"state","content":"content","title":"title","id":"id"}';

final String kTaskListJson =
    '[{"state":"state","content":"content","title":"title","id":"caio"}, {"state":"state","content":"content","title":"title","id":"id2"}]';
final String kTaskMapJson = '''
{
  "id" :{"state":"state","content":"content","title":"title","id":"id"},
  "id2" : {"state":"state","content":"content","title":"title","id":"id2"},
  "id3" : {"state":"state","content":"content","title":"title","id":"id3"}
}
''';
final TaskModel kTaskModel =
    TaskModel(id: 'id', title: 'title', content: 'content', state: 'state');

final TaskEntity kTaskEntity =
    TaskEntity(id: 'id', title: 'title', content: 'content', state: 'state');

final TaskParameters kTaskParameters =
    TaskParameters(title: 'title', content: 'content', state: 'state');

final kTaskEntity1 = TaskEntity(
  id: 'id',
  title: 'title',
  content: 'content',
  state: 'todo',
);
final kTaskEntity2 = TaskEntity(
  id: 'id2',
  title: 'title',
  content: 'content',
  state: 'todo',
);

final kListTaskEntity = [
  kTaskEntity1,
  kTaskEntity2,
];

final kTaskViewModel1 = TaskViewModel(
  id: 'id',
  title: 'title',
  content: 'content',
  state: 'todo',
);

final kTaskViewModel2 = TaskViewModel(
  id: 'id',
  title: 'title',
  content: 'content',
  state: 'todo',
);

final kTaskListViewModel = [kTaskViewModel1, kTaskViewModel2];
