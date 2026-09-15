import 'package:flutter/material.dart';
import 'package:movil/features/home/models/activity.dart';

class DatailScreen extends StatelessWidget {
  final Activity activity;

  const DatailScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(activity.title)),
      body: Center(
        child: Column(
          children: [
            Text("Pasos diarios"),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Atrás"),
            ),
          ],
        ),
      ),
    );
  }
}
