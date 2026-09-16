import 'package:flutter/material.dart';
import 'package:hola_mundo/features/home/models/activity.dart';
import 'package:hola_mundo/widgets/interactive_activity_card.dart';
import 'package:hola_mundo/features/profile/screens/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Activity> activityList = [
    Activity(
      title: "Pasos diarios", 
      subtitle: "",
      trailingText: "",
      icon: Icons.directions_walk,
      iconColor: Colors.black,
    ),

    Activity(title: "Rutina de Fuerza",
      subtitle: "",
      trailingText: "",
      icon: Icons.fitness_center,
      iconColor: Colors.black,
    ),

    Activity(title: "Natacion",
      subtitle: "",
      trailingText: "",
      icon: Icons.pool,
      iconColor: Colors.black,
    ),

    Activity(title: "Sesion de box",
      subtitle: "",
      trailingText: "",
      icon: Icons.fitness_center,
      iconColor: Colors.black,
    ),

    Activity(title: "Desayuno",
      subtitle: "",
      trailingText: "",
      icon: Icons.breakfast_dining,
      iconColor: Colors.black,
    ),

    Activity(title: "Comida",
      subtitle: "",
      trailingText: "",
      icon: Icons.restaurant,
      iconColor: Colors.black,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Panel de actividad física"),
        actions:[
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: "Mi Perfil",
            onPressed:(){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: activityList.length,
          itemBuilder: (context, index){
            final currentActivity = activityList[index];
            return InteractiveActivityCard(activity:currentActivity);
          },
        ),
      ),
    );
  }
}

