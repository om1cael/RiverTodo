import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/data/repositories/todo_repository_impl.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';

class HomeViewModel extends Notifier<List<TodoItem>> {
  @override
  List<TodoItem> build() {
    final todoRepository = ref.watch(TodoRepositoryImplProvider);
    return todoRepository.getAll();
  }
}