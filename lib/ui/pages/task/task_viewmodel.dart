import 'package:equatable/equatable.dart';

class TaskViewModel extends Equatable {
  final String id;
  final String title;
  final String content;
  final String state;

  TaskViewModel({
    required this.id,
    required this.title,
    required this.content,
    required this.state,
  });

  @override
  List<Object?> get props => [title, content, state];
}
