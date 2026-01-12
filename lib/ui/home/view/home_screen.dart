import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/ui/home/view/todo_item_view.dart';
import 'package:rivertodo/ui/home/view_model/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RiverTodo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(16),
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, _) {
                final todoList = ref.watch(homeViewModelProvider);

                return ListView.builder(
                  itemCount: todoList.length,
                  shrinkWrap: true,
                  itemBuilder: (_, item) {
                    return TodoItemView(todoItem: todoList[item]);
                  },
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}