import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/presentation/widget_example/screen/Button%20Screen/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ScreenTwo()));
            },
            child: const Text('Goto Scrn 2')),
      ),
    );
  }
}
