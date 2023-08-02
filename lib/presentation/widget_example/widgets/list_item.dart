import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final int index;
  const ListItem({super.key, required this.index, required this.title});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _checkboxtick = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.amberAccent),
      child: ListTile(
        leading: Checkbox(
          checkColor: Colors.grey,
          activeColor: Colors.amberAccent,
          value: _checkboxtick,
          onChanged: (value) {
            setState(() {
              _checkboxtick = value ?? false;
            });
          },
        ),
        title: Text(widget.title),
        subtitle: Text('Item Number ${widget.index + 1}'),
      ),
    );
  }
}
