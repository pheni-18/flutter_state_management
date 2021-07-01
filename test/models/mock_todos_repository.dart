import 'package:flutter_state_management/repositories/todos.dart';
import 'package:flutter_state_management/models/todo.dart';

class MockTodosRepository implements TodosRepository {
  @override
  Future<List<Todo>> fetchTodos() {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        return [
          Todo(id: 'test0001', title: 'test_title1', done: false),
          Todo(id: 'test0002', title: 'test_title2', done: true),
          Todo(id: 'test0003', title: 'test_title3', done: false),
        ];
      },
    );
  }
}
