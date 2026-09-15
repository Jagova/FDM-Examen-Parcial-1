import 'package:flutter/material.dart';
import 'package:test1/features/home/models/activity.dart';
import 'package:test1/features/home/widgets/interactive_activity_card.dart';
import 'package:test1/features/profile/screens/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activity> activityList = [
    Activity(
      title: "Pasos Diarios",
      subtitle: "Caminar 10,000 pasos al día",
      trailingText: "10,000 pasos",
      icon: Icons.directions_walk,
      iconColor: Colors.blue,
    ),
    Activity(
      title: "Natacion",
      subtitle: "Nadar 30 minutos al día",
      trailingText: "30 min",
      icon: Icons.pool,
      iconColor: Colors.lightBlue,
    ),
    Activity(
      title: "Rutina de fuerza",
      subtitle: "Entrenar 4 veces a la semana",
      trailingText: "4 veces",
      icon: Icons.fitness_center,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Sesion de Box",
      subtitle: "Practicar boxeo 2 veces a la semana",
      trailingText: "2 veces",
      icon: Icons.fitness_center,
      iconColor: Colors.orange,
    ),
    Activity(
      title: "Desayuno",
      subtitle: "Consumir una dieta equilibrada",
      trailingText: "Equilibrado",
      icon: Icons.fastfood,
      iconColor: Colors.red,
    ),
    Activity(
      title: "Comida",
      subtitle: "Ingerir alimentos nutritivos",
      trailingText: "Nutritivo",
      icon: Icons.restaurant,
      iconColor: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Panel de actividad física"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: activityList.length,
          itemBuilder: (context, index) {
            final currentActivity = activityList[index];
            return InteractiveActivityCard(activity: currentActivity);
          },
        ),
      ),
    );
  }
}
