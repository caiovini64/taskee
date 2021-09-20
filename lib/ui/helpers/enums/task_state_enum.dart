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

  int get index {
    switch (this) {
      case TaskState.toDo:
        return 1;
      case TaskState.inProgress:
        return 2;
      case TaskState.done:
        return 3;
    }
  }
}
