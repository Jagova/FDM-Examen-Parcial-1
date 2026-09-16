//Este es un stateless widget
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget{
  final String title;
  final String subtitle;
  final String trailingtext;
  final IconData icon;
  final Color iconColor;

  const ActivityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailingtext,
    required this.icon,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, size: 40, color: iconColor),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Text(
          trailingtext,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        
      ),
    );
  }

}