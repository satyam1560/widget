import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: sizes.width / 2,
      height: sizes.height / 5,
      child: const Center(
        child: Text('Media query example'),
      ),
    );
  }
}
