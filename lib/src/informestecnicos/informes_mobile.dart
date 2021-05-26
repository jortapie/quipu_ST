import 'package:flutter/material.dart';
import 'package:st_quipu_v2/src/Utilities/boton_nulo.dart';

import 'package:st_quipu_v2/src/Utilities/boton_secundario.dart';
import 'package:st_quipu_v2/src/Utilities/header/header_mobile.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

class InformesMobile extends StatelessWidget {
  const InformesMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeadermobile('INFORMES TÉCNICOS', context),
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
            crearBotonSecundario(Icons.art_track, 'Impresión de informes CRC', 
            'https://plataforma-atencion-tecnica.eastus.cloudapp.azure.com/#/home'),
          ],
        ),
        TableRow(
          children: [
            crearBotonSecundario(Icons.ballot_sharp, 'Informes cigueñales y bielas',  
            'https://datastudio.google.com/u/0/reporting/4bfd4053-ad81-4b9d-a871-5649608ad129/page/9SnJC'),
            crearBotonNulo(),
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