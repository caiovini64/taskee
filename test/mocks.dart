import 'package:new_taskee/data/models/models.dart';
import 'package:new_taskee/domain/entities/entities.dart';

final kTaskjson =
    '{"state":"state","content":"content","title":"title","id":"id"}';

final String kTaskListJson =
    '[{"state":"state","content":"content","title":"title","id":"id"}, {"state":"state","content":"content","title":"title","id":"id2"}]';

final TaskModel kTaskModel =
    TaskModel(id: 'id', title: 'title', content: 'content', state: 'state');

final TaskEntity kTaskEntity =
    TaskEntity(id: 'id', title: 'title', content: 'content', state: 'state');

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
