import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Perfil/screens/profile_screen.dart';
import 'package:flutter_application_1/features/home/models/activity.dart';
import 'package:flutter_application_1/features/home/widgets/interactive_activity_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activity> activityList = [
    Activity(
      title: "Pasos Diarios",
      subtitle: "Meta: 10,000 pasos",
      trailingText: "747",
      icon: Icons.directions_walk,
      iconColor: Colors.deepPurple,
    ),
    Activity(
      title: "Natación",
      subtitle: "Meta: 10,000 pasos",
      trailingText: "747",
      icon: Icons.pool,
      iconColor: Colors.blue,
    ),
    Activity(
      title: "Rutina de Fuerza",
      subtitle: "Meta: 10,000 pasos",
      trailingText: "747",
      icon: Icons.fitness_center,
      iconColor: Colors.red,
    ),
    Activity(
      title: "Sesión de box",
      subtitle: "Meta: 10,000 pasos",
      trailingText: "747",
      icon: Icons.sports_mma,
      iconColor: Colors.red.shade400,
    ),
    Activity(
      title: "Desayuno",
      subtitle: "Meta: 10,000 pasos",
      trailingText: "747",
      icon: Icons.food_bank,
      iconColor: Colors.green.shade400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //aqui esta mi appbar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

        title: Text(
          "Panel de Actividad Fisica",
          style: TextStyle(fontSize: 18),
        ),
        // boton de usuario derecha superior a
        actions: [
          Padding(
            //right hace que se vaya a la derecha
            // como esto ya esta hasta arriba pues no tendria que hacer cosas extrras
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              // circle avatar
              icon: const CircleAvatar(
                backgroundColor: Colors.white,
                // solo le puse un icono de personita y lo puse de morado
                child: Icon(Icons.person, color: Colors.deepPurple),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          padding: EdgeInsets.all(8.0),
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
