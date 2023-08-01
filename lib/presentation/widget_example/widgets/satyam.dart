import 'package:flutter/material.dart';

class Satyam extends StatelessWidget {
  const Satyam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const SizedBox(
        height: 100,
        width: 100,
        child: CircleAvatar(
          foregroundImage: NetworkImage(
              'https://drive.google.com/uc?export=view&id=1aJgrV9H5IdokorPisxqnMgbGEXKjxW3K'),
        ),
      ),
      Positioned(
        top: 80,
        left: 30,
        child: Container(
          decoration: const BoxDecoration(color: Colors.white70),
          child: const Text('Satyam'),
        ),
      ),
    ]);
  }
}
