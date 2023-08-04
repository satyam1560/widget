import 'package:flutter/material.dart';

class SunShine extends StatelessWidget {
  final double radius;
  final Widget child;
  const SunShine({super.key, required this.radius, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1), shape: BoxShape.circle),
      child: Center(
        child: child,
      ),
    );
  }
}
