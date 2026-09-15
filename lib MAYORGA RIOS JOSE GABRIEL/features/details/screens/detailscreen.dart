import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/models/activity.dart';

class DetailsScreen extends StatelessWidget {
  final Activity activity;

  const DetailsScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(this.activity.title)),
      body: Center(
        child: Column(
          children: [
            Text("Detalles de la actividad"),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Volver"),
            ),
          ],

        ),
      ),
    );
  }
}