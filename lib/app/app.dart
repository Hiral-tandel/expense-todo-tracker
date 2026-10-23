import 'package:flutter/material.dart';
import 'package:tracker/app/routes/app_routes.dart';
import 'package:tracker/app/theme/app_theme.dart';

import '../features/home/screens/home_screen.dart';
class TrackerApp extends StatelessWidget {
  const TrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense & todo Tracker',
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
      },
    );
  }
}
