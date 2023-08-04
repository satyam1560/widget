import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/application/theme_service.dart';
import 'package:flutter_basic_widget/presentation/components/custom_button.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/buttons.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/first_column_child.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/hello_world.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/layout_builder_example.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/media_query_example.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/person.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/row_expanded_widget.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widgets/row_flexible_widget.dart';
import 'package:provider/provider.dart';

import 'Button Screen/screen_one.dart';
import 'Button Screen/screen_two.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basics'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 10),
            const RowFlexibleWidget(),
            const SizedBox(height: 10),
            const RowExpandedWidget(),
            const SizedBox(height: 10),
            const FirstColumnChild(),
            const SizedBox(height: 10),
            const HelloWorld(),
            const SizedBox(height: 10),
            // const Satyam(),
            const Person(
                pictureUrl:
                    'https://drive.google.com/uc?export=view&id=1aJgrV9H5IdokorPisxqnMgbGEXKjxW3K',
                age: '23',
                country: 'India',
                job: 'Remote',
                name: 'Satyam'),
            const SizedBox(height: 10),
            // const Rishu(),
            const Person(
                pictureUrl:
                    'https://drive.google.com/uc?export=view&id=1Zz7cqEMhR7mc6D0zyz4g4OQU2rkUUsFF',
                age: '22',
                country: 'India',
                job: 'Maersk',
                name: 'Rishu'),
            const SizedBox(height: 10),
            const MediaQueryExample(),
            const SizedBox(height: 10),
            const LayoutBuilderExample(),
            const SizedBox(height: 10),
            const Buttons(),
            CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScreenOne()));
                },
                icon: Icons.home,
                color: Colors.white),
            const SizedBox(height: 10),
            CustomButtonGesture(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenTwo(),
                      ));
                },
                text: 'Gesture Button'),
            const SizedBox(height: 30)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ThemeService>(context, listen: false).toggleTheme();
        },
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
