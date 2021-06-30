import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter_state_management/repositories/todos.dart';
import 'todo.dart';
import 'todos_state.dart';

final todosProvider = StateNotifierProvider<TodosController>(
  (ref) => TodosController(ref.watch(todosRepositoryProvider)),
);

class TodosController extends StateNotifier<TodosState> {
  final TodosRepository todosRepository;

  TodosController(this.todosRepository) : super(TodosState()) {
    () async {
      state = state.copyWith(
        todos: await todosRepository.fetchTodos(),
        isLoading: false,
      );
    }();
  }

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

  void toggle(String id) {
    state = state.copyWith(
      todos: state.todos
          .map((todo) => todo.id == id
              ? Todo(
                  id: todo.id,
                  title: todo.title,
                  done: !todo.done,
                )
              : todo)
          .toList(),
    );
  }

  void remove(String id) {
    state = state.copyWith(
      todos: state.todos.where((todo) => todo.id != id).toList(),
    );
  }
}
