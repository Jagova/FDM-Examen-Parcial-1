import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/models/activity.dart';
import 'package:flutter_application_1/features/details/screens/detail_screen.dart';

//clase del widget
class InteractiveActivityCard extends StatefulWidget {
  final Activity activity;

  const InteractiveActivityCard({
    super.key,
    required this.activity,
  });

//metodo para crear el estado basado en una clase
  @override
  State<InteractiveActivityCard> createState() => _InteractiveActivityCardState();
}

class _InteractiveActivityCardState extends State<InteractiveActivityCard> {
  bool isCompleted = false;

 

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isCompleted ? Colors.green.shade100 : Colors.white,
      elevation: 4,
      child: ListTile(
        title: Text(widget.activity.title),
        subtitle: Text(isCompleted ? 'Completado!' : 'Pendiente de completar'),
        onTap:(){
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => DetailScreen(
             activity: widget.activity,
           )));
        },
        trailing:IconButton(
              onPressed: (){
                setState(() {
                  isCompleted = !isCompleted;
                });
              },
              icon: Icon(isCompleted ? Icons.check_circle : Icons.radio_button_unchecked, color: isCompleted ? Colors.green : Colors.grey),)
      
      ),
    );
  }
}