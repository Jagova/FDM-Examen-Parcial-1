import 'package:flutter/material.dart';
import 'package:mi_primera_app/features/home/models/activity.dart';
import 'package:mi_primera_app/features/home/widgets/interactive_activity_card.dart';
import 'package:mi_primera_app/features/home/screens/profile_screens.dart'; 

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activity> activityList = [
    Activity(title: "Pasos diarios", subtitle: "Meta: 10,000 pasos", trailingtext: "7,459", icon: Icons.directions_walk),
    Activity(title: "Alarma del dia", subtitle: "5 alarmas hoy", trailingtext: "5", icon: Icons.alarm),
    Activity(title: "Kilometros en bicicleta", subtitle: "Meta: 5 km pasos", trailingtext: "3.7km", icon: Icons.directions_bike),
    Activity(title: "Natacion", subtitle: "Meta: 1000 metros", trailingtext: "750", icon: Icons.pool),
    Activity(title: "comida", subtitle: "Meta: 2000 calorias", trailingtext: "1,500", icon: Icons.restaurant),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text(widget.title),
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
            return InteractiveActivityCard(
              activity: currentActivity,
            );
          }
        )
      ),
    );
  }
}