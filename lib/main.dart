import 'package:flutter/material.dart';
import 'package:web_com/view/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
