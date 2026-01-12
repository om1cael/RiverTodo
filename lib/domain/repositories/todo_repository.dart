import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';

abstract class TodoRepository {
  void create(TodoDraft draft);
  List<TodoItem> getAll();
  void update(TodoDraft updatedItem, int id);
  void delete(int id);
}