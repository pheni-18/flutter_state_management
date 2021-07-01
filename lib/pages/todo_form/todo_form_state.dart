import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_form_state.freezed.dart';

@freezed
abstract class TodoFormState with _$TodoFormState {
  const factory TodoFormState({
    @Default('') String title,
    @Default(false) bool canSubmit,
  }) = _TodoFormState;
}
