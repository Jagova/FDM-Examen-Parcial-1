import 'package:flutter/material.dart';
import 'package:mi_primera_app/features/home/models/activity.dart';
import 'package:mi_primera_app/features/home/widgets/interactive_activity_card.dart';
import 'package:mi_primera_app/features/profile/screens/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activity> activityList = [
    Activity(
      title: "Pasos Diarios",
      subtitle: "",
      trailingText: "",
      icon: Icons.import_contacts,
      iconColor: Colors.black,
    ),
    Activity(
      title: "Natacion",
      subtitle: "",
      trailingText: "",
      icon: Icons.import_contacts,
      iconColor: Colors.black,
    ),
    Activity(
      title: "Rutina de Fuerza",
      subtitle: "",
      trailingText: "",
      icon: Icons.import_contacts,
      iconColor: Colors.black,
    ),
    Activity(
      title: "Sesion de Box",
      subtitle: "",
      trailingText: "",
      icon: Icons.import_contacts,
      iconColor: Colors.black,
    ),
    Activity(
      title: "Desayuno",
      subtitle: "",
      trailingText: "",
      icon: Icons.import_contacts,
      iconColor: Colors.black,
    ),
    Activity(
      title: "Comida",
      subtitle: "",
      trailingText: "",
      icon: Icons.import_contacts,
      iconColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text("Panel de Actividad Fisica"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
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
