
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{

  const ProfileScreen(super.key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Mi Perfil"),
      ),
      body: Center(
        child: Column(
          children: 
          [
            CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text('AH'),
            ),

            const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Card(
                    child: const ListTile(
                      leading: Icon(Icons.fitness_center, color: Colors.blueAccent),
                      title: Text("Entrenamientos completados"),
                      subtitle: Text("15 sesiones este mes"),
                    ),
                  ),
                ),
            
                Expanded(
                  child: Card(
                    child: const ListTile(
                      leading: Icon(Icons.history, color: Colors.blueAccent),
                      title: Text("Último registro"),
                      subtitle: Text("Máquina abductora"),
                    ),
                  ),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Volver a la pantalla de inicio"),
            ),
          ],
        )
      ),
    );
  }
}