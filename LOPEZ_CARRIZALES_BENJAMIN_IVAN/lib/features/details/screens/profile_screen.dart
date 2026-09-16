import 'package:flutter/material.dart';
import 'package:movil/features/home/widgets/activity_cad.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mi Perfil")),
      body: Center(child: Column(children: [
        Text("Regresar a la pantalla anterior"),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Atrás"),
        ),
        CircleAvatar(
          radius: 75,
          child: Icon(Icons.person, size: 100),
        ),
        Text("Benjamín Iván López", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Divider(
          height: 10,
          thickness: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActivityCard(
              title: "Pasos diarios",
              subtitle: "10,000 pasos",
              trailing: "Hecho",
              icon: Icons.directions_walk,
              iconColor: Colors.green,
            ),
            ActivityCard(
              title: "Caminar",
              subtitle: "10 km",
              trailing: "Pendiente",
              icon: Icons.directions_walk,
              iconColor: Colors.green,
            ),
          ],
        ),
      ])),
    );
  }
}
