import 'package:flutter/material.dart';
import 'package:rivertodo/domain/entities/todo_item.dart';

class TodoItemView extends StatelessWidget {
  const TodoItemView({
    super.key,
    required TodoItem todoItem,
  }) : _todoItem = todoItem;

  final TodoItem _todoItem;

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {}, 
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}