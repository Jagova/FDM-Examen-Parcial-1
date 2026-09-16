import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  //propiedades de la tarjeta de actividad
  final String title;
  final String subtitle;
  final String trailingText;
  final IconData icon;
  final Color iconColor;

//constructor de la clase ActivityCard
 const ActivityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailingText,
    required this.icon,
    required this.iconColor,
  });

//metodo obligatorio , indica que es lo que va a renderizar
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(subtitle),
        trailing: Text(trailingText, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
