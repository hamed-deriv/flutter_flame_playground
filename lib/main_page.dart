import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: const Center(),
      );
}
