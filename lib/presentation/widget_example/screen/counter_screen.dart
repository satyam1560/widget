import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Text(
          _counter.toString(),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 200,
              color: _counter > 0 ? Colors.green : Colors.red),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag:
                  'button1', //we want to have to 2 diff tag to differentiate them
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                  _counter = _counter - 1;
                });
              },
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: 'button2',
              backgroundColor: Colors.green,
              onPressed: () {
                setState(() {
                  _counter = _counter + 1;
                });
              },
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
