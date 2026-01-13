import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';
import 'package:rivertodo/domain/repositories/todo_repository.dart';

final todoRepositoryImplProvider = NotifierProvider(TodoRepositoryImpl.new);

class TodoRepositoryImpl extends TodoRepository {
  @override
  List<TodoItem> build() {
    return [];
  }

  @override
  void create(TodoDraft draft) {
    final int id = state.length;
    final todoItem = draft.toItem(id);

    state = [...state, todoItem];
  }

  @override
  void delete(int id) {
    final item = state
      .where((item) => item.id == id)
      .first;
    
    state = state.where((listItem) => listItem.id != item.id).toList();
  }

  @override
  List<TodoItem> getAll() {
    return state;
  }

  @override
  void update(TodoDraft updatedItemDraft, int id) {
    state = [
      for(TodoItem item in state)
        if(item.id == id)
          item.copyWith(
            item.id, 
            updatedItemDraft.description, 
            updatedItemDraft.isDone,
          )
        else item, 
    ];
  }
}