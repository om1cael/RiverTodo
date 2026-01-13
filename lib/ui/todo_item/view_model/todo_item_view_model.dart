import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/usecases/delete_usecase.dart';
import 'package:rivertodo/domain/usecases/update_usecase.dart';

final todoItemViewModelProvider = Provider((ref) {
  return TodoItemViewModel(
    updateUseCase: ref.read(updateUseCaseProvider),
    deleteUseCase: ref.read(deleteUseCaseProvider),
  );
});

class TodoItemViewModel {
  const TodoItemViewModel({
    required UpdateUseCase updateUseCase,
    required DeleteUseCase deleteUseCase,
  }) :  _updateUseCase = updateUseCase, 
        _deleteUseCase = deleteUseCase;

  final UpdateUseCase _updateUseCase;
  final DeleteUseCase _deleteUseCase;

  void updateTask(TodoDraft draft, int id) {
    _updateUseCase.execute(draft, id);
  }

  void deleteTask(int id) {
    _deleteUseCase.execute(id);
  }
}