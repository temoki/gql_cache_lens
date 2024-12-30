import 'package:flutter/material.dart';

import '../ui_factory.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.factory,
  });

  final UiFactory factory;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: factory.makeIssuesPage(),
    );
  }
}
