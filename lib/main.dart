import 'package:flutter/material.dart';

import 'package:flutter_flame_playground/main_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Flame',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MainPage(title: 'Flutter Main Page'),
      );
}
