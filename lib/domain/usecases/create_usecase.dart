import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/domain/repositories/todo_repository.dart';

class CreateUseCase {
  const CreateUseCase({
    required TodoRepository todoRepository,
  }) : _todoRepository = todoRepository;

  final TodoRepository _todoRepository;

  void execute(TodoDraft draft) {
    _todoRepository.create(draft);
  }
}