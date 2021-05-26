import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

class EstadisticasPage extends StatelessWidget {
  const EstadisticasPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('Estadísticas', context),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.build, size: 90.0, color: Color.fromRGBO(255, 192, 0, 1.0)),
            Divider(),
            Text('En contruccion', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black,) )
          ],
        )
      ),
      floatingActionButton: crearHomeButton(context),
    );
  }

}