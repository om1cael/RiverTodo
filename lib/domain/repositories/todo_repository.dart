import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';

abstract class TodoRepository {
  void create(TodoDraft item);
  List<TodoItem> getAll();
  void update(TodoItem item);
  void delete(int id);
}