import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/models/activity.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({
    super.key,
    required this.activity
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(activity.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(activity.subtitle),
        trailing: Text(activity.trailingText, style: TextStyle(fontSize: 18)),
        leading: Icon(activity.icon, color: activity.iconColor, size: 30),
      ),
    );
  }
}