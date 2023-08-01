import 'package:flutter/material.dart';

class RowExpandedWidget extends StatelessWidget {
  const RowExpandedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
          flex: 2,
          child: Text(
            'Satyam Chourasia 2 Learning Flutter widget -living in India',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.blue,
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.green,
        ),
        const SizedBox(
          width: 8,
        )
      ],
    );
  }
}
