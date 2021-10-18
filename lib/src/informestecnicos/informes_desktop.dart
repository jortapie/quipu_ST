import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/boton_nulo.dart';
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
            crearBotonSecundario(Icons.ballot_sharp, 'Informes cigueñales y bielas',  
            'https://datastudio.google.com/u/0/reporting/4bfd4053-ad81-4b9d-a871-5649608ad129/page/9SnJC'),
          ],
        ),
        TableRow(
          children: [
            crearBotonSecundario(Icons.art_track, 'Reporte de recepción', 
            'https://ferreyros-mvp.web.app/main/init-eval-reports'),
            crearBotonSecundario(Icons.art_track, 'Reporte de despacho', 
            'https://ferreyros-mvp.web.app/main/init-eval-reports'),
            crearBotonSecundario(Icons.check_circle_outline, 'Información técnica',  
            'https://app.awesome-table.com/-Mluo29BG_epmF_Ebh_5/view'),
            // crearBotonNulo(),
          ],
        ),
        TableRow(
          children: [
            crearBotonSecundario(Icons.photo_camera_outlined, 'Ingreso de registro fotográfico',  
            'https://docs.google.com/forms/d/e/1FAIpQLSeP9XFeBmrKdj79mD49496MCcZRingBSJsF1jfsxZCgxmR3qA/viewform'),
            crearBotonSecundario(Icons.photo_album_outlined, 'Registro fotográfico',  
            'https://app.awesome-table.com/-Mlur6n6FkHAg6OClEkA/view'),
            crearBotonNulo(),
          ],
        ),
      ]
    );
    }
}