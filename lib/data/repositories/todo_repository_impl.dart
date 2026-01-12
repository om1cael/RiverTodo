import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';
import 'package:rivertodo/domain/repositories/todo_repository.dart';

final todoRepositoryImplProvider = Provider((_) {
  return TodoRepositoryImpl();
});

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
    final item = _todoList
      .where((item) => item.id == id)
      .first;
    
    _todoList.remove(item);
  }

  @override
  List<TodoItem> getAll() {
    return _todoList;
  }

  @override
  void update(TodoDraft updatedItemDraft, int id) {
    final item = _todoList
      .where((item) => item.id == id)
      .first;
    
    final updatedItem = item.copyWith(
      id, 
      updatedItemDraft.description, 
      updatedItemDraft.isDone,
    );

    _todoList[_todoList.indexWhere((item) => item.id == updatedItem.id)] = updatedItem;
  }
}