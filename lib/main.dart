import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tracker/firebase_options.dart';

import 'app/theme/app_theme.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense & To-Do Tracker',
      theme: AppTheme.lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text('Firebase Connected!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
