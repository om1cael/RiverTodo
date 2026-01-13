import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';
import 'package:rivertodo/ui/todo_item/view_model/todo_item_view_model.dart';

class TodoItemView extends ConsumerWidget {
  const TodoItemView({
    super.key,
    required TodoItem todoItem,
  }) : _todoItem = todoItem;

  final TodoItem _todoItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _todoItem.isDone, 
                  onChanged: (value) {},
                ),
                Text(_todoItem.description),
              ],
            ),
            IconButton(
              onPressed: () {
                ref
                  .read(todoItemViewModelProvider)
                  .deleteTask(_todoItem.id);
              }, 
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}