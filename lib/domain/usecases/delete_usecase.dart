import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/data/repositories/todo_repository_impl.dart';
import 'package:rivertodo/domain/repositories/todo_repository.dart';

final deleteUseCaseProvider = Provider((ref) {
  return DeleteUseCase(
    todoRepository: ref.read(todoRepositoryImplProvider.notifier),
  );
});

class DeleteUseCase {
  const DeleteUseCase({
    required TodoRepository todoRepository,
  }) : _todoRepository = todoRepository;

  final TodoRepository _todoRepository;

  void execute(int id) {
    _todoRepository.delete(id);
  }
}