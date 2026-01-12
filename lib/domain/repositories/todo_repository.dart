import 'package:rivertodo/domain/entities/todo_item.dart';

abstract class TodoRepository {
  void create(TodoItem item);
  List<TodoItem> getAll();
  void update(TodoItem item);
  void delete(int id);
}