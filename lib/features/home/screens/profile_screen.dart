import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mi Perfil')),
      body: Center(
      child:
        Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Volver?'),
          ),
        ],
      )
      )
      ,
    );
  }
}
