class TaskModel {
  final String id;
  final String title;
  final String content;
  final String state;

  TaskModel({
    required this.id,
    required this.title,
    required this.content,
    required this.state,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      state: json['state'] as String,
    );
  }

  toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'content': content,
      'state': state,
    };
  }
}
