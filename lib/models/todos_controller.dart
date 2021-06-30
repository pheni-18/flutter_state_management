import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'todo.dart';
import 'todos_state.dart';

final todosProvider = StateNotifierProvider<TodosController>(
  (ref) => TodosController(),
);

class TodosController extends StateNotifier<TodosState> {
  TodosController() : super(TodosState());

  final _uuid = Uuid();

  void add(String title) {
    state = state.copyWith(
      todos: [
        ...state.todos,
        Todo(
          id: _uuid.v4(),
          title: title,
        ),
      ],
    );
  }
}
