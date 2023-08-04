import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widget_animation/sunshine.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 140,
      child: SunShine(
        radius: 110,
        child: SunShine(
          radius: 80,
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xDDFC554F),
                      Color(0xDDFFF79E),
                    ])),
          ),
        ),
      ),
    );
  }
}
