import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_state_management/main.dart';

void main() {
  testWidgets('Render the CircularProgressIndicator',
      (WidgetTester tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(ProviderScope(child: App()));
      expect(
          find.byWidgetPredicate(
              (Widget widget) => widget is CircularProgressIndicator),
          findsOneWidget);
    });
  });

  testWidgets('Render the default todos', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(child: App()),
    );

    await tester.pumpAndSettle();

    expect(find.byType(CircularProgressIndicator), findsNothing);
    expect(find.text('title1'), findsOneWidget);
    expect(find.text('title2'), findsOneWidget);
    expect(find.text('title3'), findsOneWidget);
  });
}
