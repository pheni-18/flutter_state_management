import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'todo_form_state.dart';

final todoFormProvider = StateNotifierProvider<TodoFormController>(
  (ref) => TodoFormController(),
);

class TodoFormController extends StateNotifier<TodoFormState> {
  TodoFormController() : super(TodoFormState());

  bool _canSubmit(TodoFormState state) {
    if (state.title.isEmpty) {
      return false;
    }

    return true;
  }

  void changeTitle(String title) {
    state = state.copyWith(
      title: title,
    );

    state = state.copyWith(
      canSubmit: _canSubmit(state),
    );
  }

  void clear() {
    state = state.copyWith(
      title: '',
      canSubmit: false,
    );
  }
}
