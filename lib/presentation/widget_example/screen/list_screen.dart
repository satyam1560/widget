import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/list_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> example = ['example', 'list', 'with', 'string'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Examle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.separated(
          itemCount: example.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return ListItem(index: index, title: example[index]);
          },
        ),
      ),
    );
  }
}
