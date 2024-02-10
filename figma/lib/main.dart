import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'social.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp()); // Correct the widget name to start with a capital letter
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key); // Correct the key

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Social(),
    );
  }
}
