import 'package:flutter/material.dart';

class Rishu extends StatelessWidget {
  const Rishu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 100,
      child: CircleAvatar(
        foregroundImage: NetworkImage(
            'https://drive.google.com/uc?export=view&id=1Zz7cqEMhR7mc6D0zyz4g4OQU2rkUUsFF'),
      ),
    );
  }
}
