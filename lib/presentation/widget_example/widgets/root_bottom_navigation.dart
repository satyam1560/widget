import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/presentation/widget_example/screen/counter_screen.dart';
import 'package:flutter_basic_widget/presentation/widget_example/screen/list_screen.dart';
import 'package:flutter_basic_widget/presentation/widget_example/screen/widget_examples_screen.dart';

import '../screen/theme_animation_screen.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currIndex,
        children: const [
          WidgetExamplesScreen(),
          CounterScreen(),
          ListScreen(),
          ThemeAnimationScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onTap: (index) {
            setState(() {
              _currIndex = index;
            });
          },
          currentIndex: _currIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Example'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens), label: 'Theme')
          ]),
    );
  }
}
