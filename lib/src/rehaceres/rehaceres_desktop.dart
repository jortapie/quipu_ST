import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/boton_secundario.dart';
import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

class RehaceresDesktop extends StatelessWidget {
  const RehaceresDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('REHACERES', context),
      body: Stack(
        children: <Widget>[
          // falta metodo para el fondo
          Container(
            color: Color.fromRGBO(217, 217, 217, 1.0),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox( height: 10.0),
                crearBotonesSecundarios(context),
              ],
            )
          )
        ]
      ),
      floatingActionButton: crearHomeButton(context),
    );
  }

    Widget crearBotonesSecundarios(context) {
    return Table(
      children: [
        TableRow(
          children: [
            crearBotonSecundario(Icons.error_outline, 'Ingreso de rehacer', 
            'https://docs.google.com/forms/d/e/1FAIpQLSfR0l2rDG1stsSFKqrbDTE8vBFxp6F382wrPa7P3h_PJVVb3A/viewform'),
            crearBotonSecundario(Icons.storage, 'Repositorio de rehaceres', 
            'https://app.awesome-table.com/-MNp4pBevpBdYBUmrnC7/view'),
          ],
        ),
      ]
    );
    }
}