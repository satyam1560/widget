import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/application/theme_service.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widget_animation/stars.dart';
import 'package:flutter_basic_widget/presentation/widget_example/widget_animation/sun.dart';
import 'package:provider/provider.dart';

import '../widget_animation/moon.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Animation'),
          centerTitle: true,
        ),
        body: Consumer<ThemeService>(
          builder: (context, themeService, child) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 450,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: themeService.isDarkModeOn
                                ? Colors.black87
                                : Colors.grey,
                            offset: const Offset(0, 3),
                            blurRadius: 15,
                            spreadRadius: 7),
                      ],
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: themeService.isDarkModeOn
                              ? [
                                  const Color(0xFF94A9FF),
                                  const Color(0xFF6B66CC),
                                  const Color(0xFF200F75)
                                ]
                              : [
                                  const Color(0xDDFFFA66),
                                  const Color(0xDDFFA057),
                                  const Color(0xDD940B99)
                                ])),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 130,
                          left: 70,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 900),
                              opacity: themeService.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      Positioned(
                          top: 90,
                          left: 150,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 850),
                              opacity: themeService.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      Positioned(
                          top: 30,
                          left: 100,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 800),
                              opacity: themeService.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      Positioned(
                          top: 60,
                          left: 40,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 800),
                              opacity: themeService.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      Positioned(
                          left: 250,
                          top: 40,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 800),
                              opacity: themeService.isDarkModeOn ? 1 : 0,
                              child: const Star())),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 800),
                        top: themeService.isDarkModeOn ? 70 : 130,
                        right: themeService.isDarkModeOn ? 90 : -40,
                        child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 1000),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            child: const Moon()),
                      ),
                      AnimatedPadding(
                          padding: EdgeInsets.only(
                              top: themeService.isDarkModeOn ? 85 : 0),
                          duration: const Duration(milliseconds: 900),
                          child: const Center(child: Sun())),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: themeService.isDarkModeOn
                                  ? Colors.grey[850]
                                  : Colors.white,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              )),
                          child: Column(children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              themeService.isDarkModeOn ? 'Night' : 'Day',
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 40),
                            Text(
                              themeService.isDarkModeOn
                                  ? 'Let the Sunrise'
                                  : 'Let the Sunset',
                              style: const TextStyle(
                                  fontSize: 18, fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 30),
                            Switch(
                                value: themeService.isDarkModeOn,
                                onChanged: (value) {
                                  themeService.toggleTheme();
                                })
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
