import 'package:new_taskee/data/models/models.dart';
import 'package:new_taskee/domain/entities/entities.dart';

final kTaskjson =
    '{"state":"state","content":"content","title":"title","id":"id"}';
final TaskModel kTaskModel =
    TaskModel(id: 'id', title: 'title', content: 'content', state: 'state');
final TaskEntity kTaskEntity =
    TaskEntity(id: 'id', title: 'title', content: 'content', state: 'state');
