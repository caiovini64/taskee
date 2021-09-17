import 'package:new_taskee/domain/entities/entities.dart';
import 'package:new_taskee/ui/pages/home/home_viewmodel.dart';

extension TaskEntityExtensions on TaskEntity {
  HomeViewModel toViewModel() => HomeViewModel(
        id: id,
        content: content,
        title: title,
        state: state,
      );
}
