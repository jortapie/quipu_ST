import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/boton_secundario.dart';
import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

class InformesDesktop extends StatelessWidget {
  const InformesDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('INFORMES TÉCNICOS', context),
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
            crearBotonSecundario(Icons.article, 'Informes MSH',  
            'https://app.awesome-table.com/-Ma_NpYm5vfvT4lC7bKx/view'),
            crearBotonSecundario(Icons.folder_shared  , 'Ingreso de informes MSH', 
            'https://docs.google.com/forms/d/e/1FAIpQLSe0lXyCaR-d_25ob8yTtziHWkZ7e6OkdWLAErf6YBL6rOzcEg/viewform'),
          ],
        ),
        TableRow(
          children: [
            crearBotonSecundario(Icons.art_track, 'Reporte de recepción', 
            'https://ferreyros-mvp.web.app/main/init-eval-reports'),
            crearBotonSecundario(Icons.art_track, 'Reporte de despacho', 
            'https://ferreyros-mvp.web.app/main/init-eval-reports'),
          ],
        ),
      ]
    );
    }
}