import 'package:flutter/material.dart';

class FirstColumnChild extends StatelessWidget {
  const FirstColumnChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.green,
      child: const Text('First Column child'),
    );
  }
}
