import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back')),
      ),
    );
  }
}
