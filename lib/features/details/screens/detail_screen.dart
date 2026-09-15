import 'package:aplicacion_prueba/features/home/models/activity.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
final Activity ativity;



const DetailScreen({
  super.key, required this.ativity});



@override
Widget build (BuildContext context){

return Scaffold(
appBar: AppBar(title: Text(this.ativity.title)),
body: Center(
  child: Column(
    children:[
      Text('Detalles de la aplicacion'),
      ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child:
        Text('Volver?')
        ),
],

),

),


);
}


}