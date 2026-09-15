import 'package:flutter/material.dart';
// necesario

// sin estado 
class ActivityCard extends StatelessWidget {

  final String title;
  final String subtitle;
  final String trailingText;
  final IconData icon;
  final Color iconColor;


  // constructor
  
  const ActivityCard({
    super.key,
    required this.title,
    required this.subtitle, 
    required this.trailingText,
    required this.icon,
    required this.iconColor,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child:
        ListTile(
          leading: Icon(icon,size: 30, color: iconColor),
          title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle: Text(subtitle),
          trailing: Text(trailingText, style: TextStyle(fontSize: 18)),
        ),
    );
  }

}
                // singular son widgets
      