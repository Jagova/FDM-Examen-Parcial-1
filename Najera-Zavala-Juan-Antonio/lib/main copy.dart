/*

import 'package:flutter/material.dart';

import 'package:mi_primera_app/widgets/activity_card.dart';
import 'package:mi_primera_app/widgets/interactive_activity_card.dart';

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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activity> activityList = [
    Activity(title: "Pasos Diarios"),
    Activity(title: "Natacion"),
    Activity(title: "Rutina de Fuerza"),
    Activity(title: "Sesion de Box"),
    Activity(title: "Desayuno"),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text("Paner de Actividad Fisica"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Resumen de hoy",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const ActivityCard(
              title: "Pasos diarios",
              subtitle: "Meta: 10 000 pasos",
              trailingText: "7,450",
              icon: Icons.directions_walk,
              iconColor: Colors.blueGrey,
            ),
            const ActivityCard(
              title: "Rutina de Fuerza",
              subtitle: "Tren Superior / Pesas",
              trailingText: "Hecho",
              icon: Icons.fitness_center,
              iconColor: Colors.black,
            ),
            const ActivityCard(
              title: "Natacion",
              subtitle: "Meta: 1,000 metros",
              trailingText: "750",
              icon: Icons.pool,
              iconColor: Colors.blue,
            ),
            InteractiveActivityCard(title: "Pasos Diarios"),
            InteractiveActivityCard(title: "Rutina de Fuerza"),
            InteractiveActivityCard(title: "Natacion"),
          ],
        ),
      ),
    );
  }
}

class Activity {
  final String title;

  Activity({required this.title});
}


*/