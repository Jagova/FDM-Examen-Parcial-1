import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/widgets/activity_card.dart';
import 'package:flutter_application_1/features/home/widgets/interactive_activity_card.dart';
import 'features/home/models/activity.dart';
import 'package:flutter_application_1/features/home/screens/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}
