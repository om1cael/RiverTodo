class TodoItem {
  final int id;
  final String description;
  final bool isDone;

  TodoItem({
    required this.id,
    required this.description,
    this.isDone = false,
  });
}