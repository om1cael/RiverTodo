class TodoItem {
  final int id;
  final String description;
  final bool isDone;

  const TodoItem({
    required this.id,
    required this.description,
    this.isDone = false,
  });
}