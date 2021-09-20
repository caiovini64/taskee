abstract class NewTaskPresenter {
  Future<void> addTask();
  void validateTitle(String title);
  void validateContent(String content);
}
