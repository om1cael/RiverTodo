import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rivertodo/domain/entities/todo_draft.dart';
import 'package:rivertodo/ui/home/view/todo_item_view.dart';
import 'package:rivertodo/ui/home/view_model/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _taskDescriptionTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _taskDescriptionTextController.dispose();
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context, 
            builder: (context) {
              return AlertDialog(
                title: Text('Create a new task'),
                content: TextField(
                  controller: _taskDescriptionTextController,
                  maxLength: 48,
                ),
                actions: [
                  Consumer(
                    builder: (context, ref, _) {
                      return TextButton(
                        onPressed: () {
                          final viewModel = ref.read(homeViewModelProvider.notifier);

                          final draft = TodoDraft(
                            description: _taskDescriptionTextController.text
                          );
                          
                          viewModel.createTask(draft);

                          Navigator.of(context).pop();
                          _taskDescriptionTextController.clear();
                        }, 
                        child: Text('Create'),
                      );
                    }
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _taskDescriptionTextController.clear();
                    }, 
                    child: Text('Cancel'),
                  ),
                ],
              );
            }
          );
        },
        child: Icon(Icons.create),
      ),
    );
  }
}