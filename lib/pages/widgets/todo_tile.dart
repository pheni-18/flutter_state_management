import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final todo;

  const TodoTile({this.todo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onLongPress: () {},
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
                // color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
