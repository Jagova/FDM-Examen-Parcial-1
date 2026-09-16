
import 'package:flutter/material.dart';
import 'package:mi_primer_app/features/details/screens/profile_screen.dart';
import 'package:mi_primer_app/features/home/models/activity.dart';
import 'package:mi_primer_app/features/home/widgets/interactive_activity_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activity> activityList = [
    Activity(title: "Pasos Diarios", subtitle: "10,000 pasos", trailingText: "5,000 pasos", icon: Icons.directions_walk, iconColor: Colors.blue),
    Activity(title: "Natación", subtitle: "30 minutos", trailingText: "15 minutos", icon: Icons.pool, iconColor: Colors.lightBlue),
    Activity(title: "Rutina de fuerza", subtitle: "45 minutos", trailingText: "20 minutos", icon: Icons.fitness_center, iconColor: Colors.green),
    Activity(title: "Sesión de box", subtitle: "60 minutos", trailingText: "30 minutos", icon: Icons.person, iconColor: Colors.red),
    Activity(title: "Desayuno", subtitle: "300 calorías", trailingText: "150 calorías", icon: Icons.local_cafe, iconColor: Colors.orange),
    Activity(title: "Comida", subtitle: "500 calorías", trailingText: "250 calorías", icon: Icons.local_dining, iconColor: Colors.purple),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text("Panel de Actividad Física"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: activityList.length,
              itemBuilder: (context, index) {
                final currentActivity = activityList[index];
                return InteractiveActivityCard(activity: currentActivity);
              },
            ),
          ),
        ],
      ),
    );
  }


}

