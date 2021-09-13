import 'package:equatable/equatable.dart';

class TaskViewModel extends Equatable {
  final String title;
  final String subtitle;
  final String state;

  TaskViewModel({
    required this.title,
    required this.subtitle,
    required this.state,
  });

  @override
  List<Object?> get props => [title, subtitle, state];
}
