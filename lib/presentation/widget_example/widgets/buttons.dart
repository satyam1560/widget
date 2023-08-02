import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  bool switchState = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(6))),
          child: TextButton(
            onPressed: () {
              print('TextButton Pressed');
            },
            child: const Text(
              'Text Button',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 10),
        IconButton(
            onPressed: () {
              print('iconButton Pressed');
            },
            icon: const Icon(Icons.play_arrow)),
        const SizedBox(height: 10),
        Switch(
          value: switchState,
          onChanged: (value) {
            setState(() {
              switchState = value;
            });
          },
        ),
      ],
    );
  }
}
