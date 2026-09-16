import 'package:aplicacion_prueba/features/details/screens/detail_screen.dart';
import 'package:aplicacion_prueba/features/home/models/activity.dart';
import 'package:flutter/material.dart';

class InteractiveActivityCard extends StatefulWidget { // si cambia

final Activity activity;


 const InteractiveActivityCard({super.key,required this.activity});

@override
State<InteractiveActivityCard> createState() => _InteractiveActivityCardState();
// nos tiene que regresar un estado de tipo _InteractiveActivityCardState  
}

// aqui dentro va todo lo que va a cambiar

class _InteractiveActivityCardState extends State<InteractiveActivityCard> {

bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
  return Card(
    // configutacion de la tarjeta, si esta completada cambia el color

  color: isCompleted ? Colors.green[100] : Colors.white,
  elevation: 4,
  
  child: ListTile(

    leading: Icon(widget.activity.icon, size: 20, color: widget.activity.iconColor),
    title: Text(widget.activity.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    subtitle: Text(isCompleted ? 'Completado' : 'Pendiente'),
    onTap: (){
      // funcionan como pilas por eso el push y el pop
      Navigator.push( 
        context, 
        MaterialPageRoute(
          builder: (context )=> DetailScreen(
          ativity: widget.activity
          ),
          
          ) )  ;
    },


    trailing:
    IconButton (


      onPressed: (){    
      // funcion para actualizar estado de is completed ?
      setState(() {
        isCompleted = !isCompleted;
      });


    }, 
    icon: Icon(
      isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
      color: isCompleted ?  Colors.cyan : Colors.grey), // para decir si ya 

  )


  ),
  );

  }

 }





 /*
La pregunta clave es: 
¿el widget necesita mostrar OTRO widget adentro, 
o se dibuja solo con sus propiedades?

*/
