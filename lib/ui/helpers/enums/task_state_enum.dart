enum TaskState {
  toDo,
  inProgress,
  done,
}

extension TaskStateExtension on TaskState {
  String get description {
    switch (this) {
      case TaskState.toDo:
        return 'to do';
      case TaskState.inProgress:
        return 'in progress';
      case TaskState.done:
        return 'done';
    }
  }
}
