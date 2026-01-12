import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';
import 'package:rivertodo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  List<TodoItem> _todoList = [];

  @override
  void create(TodoDraft draft) {
    final int id = _todoList.length;
    final todoItem = draft.toItem(id);

    _todoList.add(todoItem);
  }

  @override
  void delete(int id) {
    // TODO: implement delete
  }

  @override
  List<TodoItem> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  void update(TodoItem item) {
    // TODO: implement update
  }
}