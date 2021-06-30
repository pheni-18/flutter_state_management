import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_state_management/models/todos_controller.dart';

class AddTodoPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    String _newTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                _newTitle = newText;
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
              onPressed: () {
                context.read(todosProvider).add(_newTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
