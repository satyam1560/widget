import 'package:flutter/material.dart';

class RowFlexibleWidget extends StatelessWidget {
  const RowFlexibleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Flexible(
          child: Text(
            'Satyam Chourasia 1 Learning Flutter widget -living in India',
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
