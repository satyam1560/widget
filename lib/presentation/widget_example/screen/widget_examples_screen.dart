import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/first_column_child.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/hello_world.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/layout_builder_example.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/media_query_example.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/rishu.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/row_expanded_widget.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/row_flexible_widget.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/satyam.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basics'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SizedBox(height: 10),
              RowFlexibleWidget(),
              SizedBox(height: 10),
              RowExpandedWidget(),
              SizedBox(height: 10),
              FirstColumnChild(),
              SizedBox(height: 10),
              HelloWorld(),
              SizedBox(height: 10),
              Satyam(),
              SizedBox(height: 10),
              Rishu(),
              SizedBox(height: 10),
              MediaQueryExample(),
              SizedBox(height: 10),
              LayoutBuilderExample(),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('onClicked'),
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
