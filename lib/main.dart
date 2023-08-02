import 'package:flutter/material.dart';

import 'presentation/widget_example/widgets/root_bottom_navigation.dart';

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
      home: const RootBottomNavigation(),
    );
  }
}
