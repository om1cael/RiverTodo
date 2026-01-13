import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';

abstract class TodoRepository extends Notifier<List<TodoItem>> {
  void create(TodoDraft draft);
  List<TodoItem> getAll();
  void update(TodoDraft updatedItemDraft, int id);
  void delete(int id);
}