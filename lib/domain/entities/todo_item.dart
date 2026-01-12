class TodoItem {
  final String description;
  final bool isDone;

  const TodoItem({
    required this.description,
    this.isDone = false,
  });
}