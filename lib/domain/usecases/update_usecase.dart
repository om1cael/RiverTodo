import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/data/repositories/todo_repository_impl.dart';
import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/repositories/todo_repository.dart';

final updateUseCaseProvider = Provider((ref) {
  return UpdateUseCase(
    todoRepository: ref.read(todoRepositoryImplProvider.notifier),
  );
});

class UpdateUseCase {
  const UpdateUseCase({
    required TodoRepository todoRepository,
  }) : _todoRepository = todoRepository;

  final TodoRepository _todoRepository;

  void execute(TodoDraft draft, int id) {
    _todoRepository.update(draft, id);
  }
}