import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_state_management/models/todos_controller.dart';
import 'widgets/todo_tile.dart';
import 'widgets/todo_form_controller.dart';
import 'add_todo_page.dart';

class HomePage extends HookWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todosState = useProvider(todosProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter State Management'),
      ),
      body: todosState.isLoading
          ? Center(child: CircularProgressIndicator())
          : _ListView(),
      floatingActionButton: _FAB(),
    );
  }
}

class _FAB extends StatelessWidget {
  const _FAB();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddTodoPage(),
            ),
          ),
        ).then((_) => context.read(todoFormProvider).clear());
      },
      child: const Icon(Icons.add),
    );
  }
}

class _ListView extends HookWidget {
  const _ListView();

  @override
  Widget build(BuildContext context) {
    final todosState = useProvider(todosProvider.state);
    final todos = todosState.todos;

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: todos.length,
      itemBuilder: (_, index) => TodoTile(todo: todos[index]),
    );
  }
}
