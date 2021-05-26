import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';
import 'package:st_quipu_v2/src/Utilities/boton_principal.dart';

import '../inspecciones_page.dart';
import '../formularios_page.dart';
import '../repositorio_page.dart';

class EvaluacionesDesktop extends StatelessWidget {
  const EvaluacionesDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('EVALUACIONES', context),
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
                _crearBotonesPrincipales(context),
              ],
            )
          )
        ]
      ),
      floatingActionButton: crearHomeButton(context),
    );
  }

    Widget _crearBotonesPrincipales(context) {
    return Table(
      children: [
        TableRow(
          children: [
            crearBotonPrincipal(Icons.check_box, 'Formularios', context, FormulariosPage()),
            crearBotonPrincipal(Icons.table_chart, 'Repositorio de formularios', context, RepositorioPage()),
            crearBotonPrincipal(Icons.zoom_in, 'Inspecciones', context, InspeccionesPage()),
          ],
        ),
      ]
    );
    }
}