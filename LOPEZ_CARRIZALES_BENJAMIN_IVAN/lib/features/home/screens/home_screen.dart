import 'package:flutter/material.dart';
import 'package:movil/features/home/models/activity.dart';
import 'package:movil/features/home/widgets/interactive_activity_card.dart';
import 'package:movil/features/details/screens/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activity> activities = [
    Activity(
      title: "Pasos diarios",
      subtitle: "10,000 pasos",
      icon: Icons.directions_walk,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Caminar",
      subtitle: "10 km",
      icon: Icons.directions_walk,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Correr",
      subtitle: "10 km",
      icon: Icons.directions_run,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Bicicleta",
      subtitle: "10 km",
      icon: Icons.directions_bike,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Trekking",
      subtitle: "10 km",
      icon: Icons.directions_bike,
      iconColor: Colors.green,
    ),

    Activity(
      title: "Pasos diarios",
      subtitle: "10,000 pasos",
      icon: Icons.directions_walk,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Caminar",
      subtitle: "10 km",
      icon: Icons.directions_walk,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Correr",
      subtitle: "10 km",
      icon: Icons.directions_run,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Bicicleta",
      subtitle: "10 km",
      icon: Icons.directions_bike,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Trekking",
      subtitle: "10 km",
      icon: Icons.directions_bike,
      iconColor: Colors.green,
    ),

    Activity(
      title: "Pasos diarios",
      subtitle: "10,000 pasos",
      icon: Icons.directions_walk,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Caminar",
      subtitle: "10 km",
      icon: Icons.directions_walk,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Correr",
      subtitle: "10 km",
      icon: Icons.directions_run,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Bicicleta",
      subtitle: "10 km",
      icon: Icons.directions_bike,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Trekking",
      subtitle: "10 km",
      icon: Icons.directions_bike,
      iconColor: Colors.green,
    ),

    Activity(
      title: "Pasos diarios",
      subtitle: "10,000 pasos",
      icon: Icons.directions_walk,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Caminar",
      subtitle: "10 km",
      icon: Icons.directions_walk,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Correr",
      subtitle: "10 km",
      icon: Icons.directions_run,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Bicicleta",
      subtitle: "10 km",
      icon: Icons.directions_bike,
      iconColor: Colors.green,
    ),
    Activity(
      title: "Trekking",
      subtitle: "10 km",
      icon: Icons.directions_bike,
      iconColor: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Theme.of(context).colorScheme.onInverseSurface,
        title: Text("Panel de actividad física"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            icon: Icon(Icons.person),
            tooltip: 'Perfil',
          ),
        ],
      ),
      body:
          // Center(child: Text("Hola mundo", style: TextStyle(fontSize: 18))),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: activities.length,
              itemBuilder: (context, index) {
                final currentActivity = activities[index];
                return InteractiveActivityCard(activity: currentActivity);
              },
            ),
          ),
    );
  }
}
