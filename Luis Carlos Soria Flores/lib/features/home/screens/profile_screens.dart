import 'package:flutter/material.dart';
import 'package:mi_primera_app/features/home/widgets/activity_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Mi perfil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    //La imagen
                    child: Icon(Icons.person, size: 50, color: Colors.blueAccent), 
                  ),
                ),
                const SizedBox(width: 16),
                //Mi nombre
                const Expanded(
                  child: Text(
                    "Luis Carlos Soria Flores", 
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            const Text(
              "Mis Estadísticas",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            
            const Divider(thickness: 2),
            const SizedBox(height: 10),

            //Aqui use el stateles widget que ya teniamos de las primeras clases
            const ActivityCard(
              title: "Rutina de gimnasio",
              subtitle: "Último entrenamiento",
              trailingtext: "Pecho y tricep",
              icon: Icons.fitness_center,
              iconColor: Colors.black,
            ),
            const ActivityCard(
              title: "Preparación de comidas",
              subtitle: "Pollo, arroz y papas",
              trailingtext: "5 porciones",
              icon: Icons.restaurant_menu,
              iconColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}