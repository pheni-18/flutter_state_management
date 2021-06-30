import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_state_management/models/todos_controller.dart';

class TodoTile extends HookWidget {
  final todo;

  const TodoTile({this.todo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => context.read(todosProvider).toggle(this.todo.id),
      onLongPress: () => context.read(todosProvider).remove(this.todo.id),
      child: Container(
        height: 100.0,
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          elevation: 4,
          color: Colors.grey[200],
          child: Center(
            child: Text(
              this.todo.title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                decoration: todo.done ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
