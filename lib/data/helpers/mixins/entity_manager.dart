import 'package:new_taskee/domain/entities/entities.dart';

mixin EntityManager {
  Map<String, dynamic> entityToJson(TaskEntity taskEntity) {
    return <String, dynamic>{
      'id': taskEntity.id,
      'title': taskEntity.title,
      'content': taskEntity.content,
      'state': taskEntity.state,
    };
  }
}
