import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_state_management/models/todos_controller.dart';
import 'todo_form_controller.dart';

class TodoForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final todoFormState = useProvider(todoFormProvider.state);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            context.read(todoFormProvider).changeTitle(newText);
          },
        ),
        FlatButton(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.blue[400],
          disabledColor: Colors.grey[400],
          onPressed: todoFormState.canSubmit
              ? () {
                  context.read(todosProvider).add(todoFormState.title);
                  Navigator.pop(context);
                }
              : null,
        ),
      ],
    );
  }
}
