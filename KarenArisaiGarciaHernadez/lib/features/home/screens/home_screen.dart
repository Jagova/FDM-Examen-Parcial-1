import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/widgets/interactive_activity_card.dart';
import 'package:flutter_application_1/features/home/models/activity.dart';
import 'package:flutter_application_1/features/profile/screens/profile_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 List<Activity> activityList = [
    Activity(title: 'Pasos diarios' , subtitle: 'Meta: 10,000 pasos', trailingText: '7,450', icon: Icons.directions_walk, iconColor: Colors.blue),
    Activity(title: 'Rutina de fuerza', subtitle: 'Tren superior / Pesas', trailingText: 'Hecho', icon: Icons.fitness_center, iconColor: Colors.green),
    Activity(title: 'Natación', subtitle: 'Meta: 1,000 metros', trailingText: '750', icon: Icons.pool, iconColor: Colors.cyan),
    Activity(title: 'Yoga', subtitle: 'Sesión de 30 minutos', trailingText: 'Pendiente', icon: Icons.self_improvement, iconColor: Colors.purple),
    Activity(title: 'Ciclismo', subtitle: 'Ruta de 10 km', trailingText: 'Pendiente', icon: Icons.directions_bike, iconColor: Colors.orange),
    Activity(title: 'Correr', subtitle: 'Meta: 5 km', trailingText: 'Pendiente', icon: Icons.directions_run, iconColor: Colors.red),
    Activity(title: 'Entrenamiento HIIT', subtitle: 'Sesión de 20 minutos', trailingText: 'Pendiente', icon: Icons.fitness_center, iconColor: Colors.pink),
    Activity(title: 'Pilates', subtitle: 'Sesión de 45 minutos', trailingText: 'Pendiente', icon: Icons.self_improvement, iconColor: Colors.teal),
    Activity(title: 'Escalada', subtitle: 'Meta: 100 metros', trailingText: 'Pendiente', icon: Icons.terrain, iconColor: Colors.brown),
    Activity(title: 'Remo', subtitle: 'Sesión de 30 minutos', trailingText: 'Pendiente', icon: Icons.rowing, iconColor: Colors.indigo),
    Activity(title: 'Boxeo', subtitle: 'Sesión de 15 minutos', trailingText: 'Pendiente', icon: Icons.sports_mma, iconColor: Colors.deepOrange),
    Activity(title: 'Senderismo', subtitle: 'Ruta de 5 km', trailingText: 'Pendiente', icon: Icons.terrain, iconColor: Colors.lightGreen),
    Activity(title: 'Baile', subtitle: 'Sesión de 30 minutos', trailingText: 'Pendiente', icon: Icons.music_note, iconColor: Colors.purpleAccent),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        title: Text('Panel de actividad física'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],

      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: activityList.length,
          itemBuilder: (context, index) {
            final currentActivity = activityList[index];
            return InteractiveActivityCard(
              activity: currentActivity,
            );
          },
        ),


        /*child: Column(
          children:[
            Text('Resumen de hoy', 
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            Card(
              child: ListTile(
                leading: Icon(Icons.directions_walk),
                title: Text('Pasos diarios'),
                subtitle: Text('Meta: 10,000 pasos'),
                trailing: Text('7,450', style: TextStyle(fontSize: 18),),
            ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.hdr_strong_rounded),
                title: Text('Rutina de fuerza'),
                subtitle: Text('Tren superior / Pesas'),
                trailing: Text('Hecho', style: TextStyle(fontSize: 18),),
            ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.pool),
                title: Text('Natación'),
                subtitle: Text('Meta: 1,000 metros'),
                trailing: Text('750', style: TextStyle(fontSize: 18),),
            ),
            ),
            ActivityCard(
              title: 'Pasos diarios',
              subtitle: 'Meta: 10,000 pasos',
              trailingText: '7,450',
              icon: Icons.directions_walk,
              iconColor: Colors.blue,
            ),

            ActivityCard(
              title: 'Rutina de fuerza',
              subtitle: 'Tren superior / Pesas',
              trailingText: 'Hecho',
              icon: Icons.fitness_center,
              iconColor: Colors.green,
            ),

            ActivityCard(
              title: 'Natación',
              subtitle: 'Meta: 1,000 metros',
              trailingText: '750',
              icon: Icons.pool,
              iconColor: Colors.cyan,
            ),

            InteractiveActivityCard(
              title: 'Yoga',
              subtitle: 'Sesión de 30 minutos',
              trailingText: 'Pendiente',
              icon: Icons.self_improvement,
              iconColor: Colors.purple,
            ),
          ],
          
        
        ),*/
      ),

    );
  }
}

