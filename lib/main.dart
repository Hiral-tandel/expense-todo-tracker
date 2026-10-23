import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tracker/app/app.dart';
import 'package:tracker/firebase_options.dart';

import 'app/theme/app_theme.dart';
import 'features/home/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const TrackerApp());
}
