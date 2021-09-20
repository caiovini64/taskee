abstract class NewTaskPresenter {
  String get title;
  String get content;

  Future<void> addTask();
  void validateTitle(String title);
  void validateContent(String content);
}
