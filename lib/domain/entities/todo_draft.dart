import 'package:rivertodo/domain/entities/todo_item.dart';

class TodoDraft {
  final String description;
  final bool isDone;

  const TodoDraft({
    required this.description,
    this.isDone = false,
  });

  TodoItem toItem(int id) {
    return TodoItem(
      id: id, 
      description: description, 
      isDone: isDone
    );
  }
}