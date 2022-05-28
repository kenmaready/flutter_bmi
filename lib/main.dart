import 'package:flutter/material.dart';
//
import './input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Flutter BMI',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
              primary: const Color(0xFF0A0E21), secondary: Colors.purple),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
          )),
      home: InputPage(),
    );
  }
}
