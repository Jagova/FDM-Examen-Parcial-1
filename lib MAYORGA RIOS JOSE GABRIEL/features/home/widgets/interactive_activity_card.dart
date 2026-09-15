import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/details/screens/detailscreen.dart';
import 'package:flutter_application_1/features/home/models/activity.dart';

//Tarea 1: Hacer que tenga todo lo del otro card, texto y icono 

class InteractiveActivityCard extends StatefulWidget {
  final Activity activity;

  const InteractiveActivityCard({
    super.key,
    required this.activity,
  });

  @override
  State<InteractiveActivityCard> createState() => _InteractiveActivityCardState();
}

class _InteractiveActivityCardState extends State<InteractiveActivityCard> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: isCompleted ? Colors.green.shade100 : Colors.white,
      child: ListTile(
        onTap:(){
          Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(activity: widget.activity),
            )
          );
        },

        leading: Icon(
          widget.activity.icon,
          color: widget.activity.iconColor,
          size: 30,
        ),
        title: Text(
          widget.activity.title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '${widget.activity.subtitle} • ${isCompleted ? "Completado" : "Pendiente"}',
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.activity.trailingText,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(width: 8),
        
            IconButton(
              onPressed: () {
                setState(() {
                  isCompleted = !isCompleted;
                });
              },
              icon: Icon(
                isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
                color: isCompleted ? Colors.green : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}