import 'package:equatable/equatable.dart';

class TaskParameters extends Equatable {
  final String title;
  final String? content;
  final String state;

  TaskParameters({
    required this.title,
    required this.content,
    required this.state,
  });

  @override
  List<Object?> get props => [title, content, state];
}
