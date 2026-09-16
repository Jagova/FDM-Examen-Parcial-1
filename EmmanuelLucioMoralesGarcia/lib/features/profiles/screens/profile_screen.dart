import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Mi Perfil"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAlignment.center,
            children: [
              const SizedBox(height: 20),
              
              // Widget CircleAvatar (Investigación)
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              
              // Nombre del usuario
              const Text(
                "Emmanuel Morales",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Atleta Fitness",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              
              // Widget Divider (Investigación)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              
              const Text(
                "Estadísticas Físicas",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // Distribución en Row usando MainAxisAlignment.spaceEvenly (Investigación)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: const [
                            Icon(Icons.fitness_center, color: Colors.blueAccent, size: 30),
                            SizedBox(height: 8),
                            Text("15", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text("Entrenamientos", textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: const [
                            Icon(Icons.timer, color: Colors.orange, size: 30),
                            SizedBox(height: 8),
                            Text("28 hrs", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text("Tiempo Total", textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 16),
              
              // Tarjeta adicional de registro
              Card(
                elevation: 4,
                child: const ListTile(
                  leading: Icon(Icons.history, color: Colors.green),
                  title: Text("Último registro"),
                  subtitle: Text("Máquina abductora, 3 series de 12 repeticiones"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}