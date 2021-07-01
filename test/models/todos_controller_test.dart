import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_state_management/models/todos_controller.dart';
import 'package:flutter_state_management/repositories/todos.dart';

import 'mock_todos_repository.dart';

void main() {
  test('TodosController test', () async {
    final container = ProviderContainer(
      overrides: [
        todosRepositoryProvider.overrideWithProvider(
          Provider((ref) => MockTodosRepository()),
        ),
      ],
    );
    final target = container.read(todosProvider);
    await expectLater(
      target.stream.map((s) => s.isLoading).first,
      completion(false),
    );
    expect(target.debugState.todos.length, 3);

    target.add('test_title4');
    expect(target.debugState.todos.length, 4);

    target.toggle('test0001');
    expect(target.debugState.todos[0].done, isTrue);

    target.remove('test0001');
    expect(target.debugState.todos.length, 3);
  });
}
