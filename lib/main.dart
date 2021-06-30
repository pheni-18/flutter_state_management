import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/pages/home_page.dart';

void main() => runApp(
      const ProviderScope(
        child: App(),
      ),
    );

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter State Management',
      home: HomePage(),
    );
  }
}
