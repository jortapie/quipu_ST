import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

class NuestroEqDesktop extends StatelessWidget {
  const NuestroEqDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('NUESTRO EQUIPO', context),
      body: Container(
        padding: EdgeInsets.all(55.0),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Reunir información es el primer paso para de la era de la digitalización, la industria 4.0.', 
              textAlign: TextAlign.justify, 
              style: TextStyle(fontFamily: 'RobotoMono', fontSize: 15.0, color: Colors.black,) ),
            Divider(),
            Text('Es por ello que esta apicación ha sido creada por el equipo de soporte técnico para apoyar a los talleres a recopilar, generar y visualizar información de sus procesos.', 
              textAlign: TextAlign.justify, 
              style: TextStyle(fontFamily: 'RobotoMono', fontSize: 15.0, color: Colors.black,) ), 
            Divider(),
            Text('Esta es una primera versión de la aplicación,', 
              textAlign: TextAlign.left, 
              style: TextStyle(fontFamily: 'RobotoMono', fontSize: 15.0, color: Colors.black,) ),
            Divider(height: 30.0,),
            Text('El equipo de soporte técnico de talleres', 
              textAlign: TextAlign.left, 
              style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.black,) )
          ],
        )
      ),
    floatingActionButton: crearHomeButton(context),
    );
  }
}