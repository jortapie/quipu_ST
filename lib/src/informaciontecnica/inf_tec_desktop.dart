import 'package:flutter/material.dart';
import 'package:st_quipu_v2/src/Utilities/boton_secundario.dart';

import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

class InfTecDesktop extends StatelessWidget {
  const InfTecDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('INFORMACIÓN TÉCNICA', context),
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
}

Widget crearBotonesSecundarios(context) {
    return Table(
      children: [
        TableRow(
          children: [
            crearBotonSecundario(Icons.book, 'Publicaciones', 
            'https://app.awesome-table.com/-MQ8ZSxXZ6B4gfZc3rWa/view'),
            crearBotonSecundario(Icons.account_balance, 'Políticas de reparación', 
            'https://app.awesome-table.com/-MQ2CFkEJ2fR9QH6UYEr/view'),
            crearBotonSecundario(Icons.add_shopping_cart, 'Kits', 
            'https://app.awesome-table.com/-MQ-PfdlcsBkwLKSC7N7/view'),
          ],
        ),
        TableRow(
          children: [
            crearBotonSecundario(Icons.check, 'Checklist', 
            'https://app.awesome-table.com/-MQ9tGPSXma8U5A-lEdz/view'),
            crearBotonSecundario(Icons.pageview, 'Planos', 
            'http://fsalima234/str/'),
            crearBotonSecundario(Icons.history, 'Historial de OTs', 
            'https://app.awesome-table.com/-MQALymUD-Mj5_uOXVNp/view'),
          ],
        ),
      ]
    );
    }