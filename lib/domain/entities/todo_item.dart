class TodoItem {
  int? id;
  final String description;
  final bool isDone;

  TodoItem({
    required this.description,
    this.isDone = false,
  });
}