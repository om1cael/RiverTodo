class TodoItem {
  final int id;
  final String description;
  final bool isDone;

  const TodoItem({
    required this.id,
    required this.description,
    required this.isDone,
  });

  TodoItem copyWith(int? id, String? description, bool? isDone) {
    return TodoItem(
      id: id ?? this.id,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
    );
  }

  @override
  String toString() {
    return '$id, $description, $isDone';
  }
}