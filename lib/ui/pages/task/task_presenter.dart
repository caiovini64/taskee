abstract class TaskPresenter {
  Future<void> getTasks();
  Future<void> addTask();
  Future<void> updateTaskState();
  Future<void> updateTask();
  Future<void> deleteTask();
}
