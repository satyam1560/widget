import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/application/theme_service.dart';
import 'package:flutter_basic_widget/theme.dart';
import 'package:provider/provider.dart';

import 'presentation/widget_example/widgets/root_bottom_navigation.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: const RootBottomNavigation(),
      );
    });
  }
}
