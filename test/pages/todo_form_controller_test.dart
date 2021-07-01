import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_state_management/pages/todo_form/todo_form_controller.dart';

void main() {
  test('TodoFormController test', () async {
    final container = ProviderContainer();
    final target = container.read(todoFormProvider);

    expect(target.debugState.title, isEmpty);
    expect(target.debugState.canSubmit, isFalse);

    target.changeTitle('test_title1');
    expect(target.debugState.title, 'test_title1');
    expect(target.debugState.canSubmit, isTrue);

    target.clear();
    expect(target.debugState.title, isEmpty);
    expect(target.debugState.canSubmit, isFalse);
  });
}
