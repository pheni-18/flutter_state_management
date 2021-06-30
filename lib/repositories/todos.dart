import 'package:flutter_state_management/models/todo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todosRepositoryProvider = Provider<TodosRepository>(
  (ref) => FakeTodosRepository(),
);

abstract class TodosRepository {
  Future<List<Todo>> fetchTodos();
}

class FakeTodosRepository implements TodosRepository {
  @override
  Future<List<Todo>> fetchTodos() {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        return [
          Todo(id: 'id0001', title: 'title1', done: false),
          Todo(id: 'id0002', title: 'title2', done: true),
          Todo(id: 'id0003', title: 'title3', done: false),
        ];
      },
    );
  }
}
