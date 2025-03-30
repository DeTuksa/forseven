import 'package:flutter/material.dart';
import 'package:forseven/core/config/routes/app_pages.dart';
import 'package:forseven/core/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Forseven EV',
      theme: ForsevenTheme.lightTheme,
      routerConfig: AppPages.routes,
    );
  }
}
