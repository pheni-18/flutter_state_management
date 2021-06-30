import 'package:freezed_annotation/freezed_annotation.dart';

import 'todo.dart';

part 'todos_state.freezed.dart';

@freezed
abstract class TodosState with _$TodosState {
  const factory TodosState({
    @Default(<Todo>[]) List<Todo> todos,
    @Default(true) bool isLoading,
  }) = _TodosState;
}
