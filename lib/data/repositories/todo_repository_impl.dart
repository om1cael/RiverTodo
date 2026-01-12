import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';
import 'package:rivertodo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  final _todoList = <TodoItem>[];

  @override
  void create(TodoDraft item) {
    // TODO: implement create
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