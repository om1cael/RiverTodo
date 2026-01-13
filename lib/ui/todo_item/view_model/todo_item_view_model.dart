import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/domain/usecases/delete_usecase.dart';

final todoItemViewModelProvider = Provider((ref) {
  return TodoItemViewModel(
    deleteUseCase: ref.read(deleteUseCaseProvider),
  );
});

class TodoItemViewModel {
  const TodoItemViewModel({
    required DeleteUseCase deleteUseCase,
  }) : _deleteUseCase = deleteUseCase;

  final DeleteUseCase _deleteUseCase;

  void deleteTask(int id) {
    _deleteUseCase.execute(id);
  }
}