import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/boton_secundario.dart';
import 'package:st_quipu_v2/src/Utilities/header/header_mobile.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

class RehaceresMobile extends StatelessWidget {
  const RehaceresMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeadermobile('REHACERES', context),
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
            crearBotonSecundario(Icons.error_outline, 'Ingreso de evento de calidad', 
            'https://ferreyros-mvp.web.app/main/quality-internal-events'),
            crearBotonSecundario(Icons.storage, 'Repositorio de rehaceres 2020', 
            'https://app.awesome-table.com/-MNp4pBevpBdYBUmrnC7/view'),
          ],
        ),
      ]
    );
    }
}