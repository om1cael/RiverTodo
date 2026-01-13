import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/data/repositories/todo_repository_impl.dart';
import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';
import 'package:rivertodo/domain/usecases/create_usecase.dart';

final homeViewModelProvider = NotifierProvider(HomeViewModel.new);

class HomeViewModel extends Notifier<List<TodoItem>> {
  @override
  List<TodoItem> build() {
    return ref.watch(todoRepositoryImplProvider);
  }

  void createTask(TodoDraft draft) {
    final createUseCase = ref.read(createUseCaseProvider);
    createUseCase.execute(draft);
  }
}