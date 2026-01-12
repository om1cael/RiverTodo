import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/data/repositories/todo_repository_impl.dart';
import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/repositories/todo_repository.dart';

final createUseCaseProvider = Provider((ref) => CreateUseCase(
  todoRepository: ref.read(todoRepositoryImplProvider),
));

class CreateUseCase {
  const CreateUseCase({
    required TodoRepository todoRepository,
  }) : _todoRepository = todoRepository;

  final TodoRepository _todoRepository;

  void execute(TodoDraft draft) {
    _todoRepository.create(draft);
  }
}