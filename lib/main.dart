import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/presentation/widget_example/screen/widget_examples_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amber,
      )),
      home: const WidgetExamplesScreen(),
    );
  }
}
