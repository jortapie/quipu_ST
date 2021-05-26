import 'package:flutter/material.dart';


import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';
import 'package:st_quipu_v2/src/Utilities/boton_secundario.dart';
import 'package:st_quipu_v2/src/Utilities/boton_nulo.dart';

class InformacionTecnicaMSHDesktop extends StatelessWidget {
  const InformacionTecnicaMSHDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('INFORMACIÓN TÉCNICA MSH', context),
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
            crearBotonSecundario(Icons.book, 'WPS', 
            'https://app.awesome-table.com/-Ma_LFHAaO8iey5ZDE9Q/view'),
            crearBotonSecundario(Icons.file_copy , 'PTR', 
            'https://app.awesome-table.com/-Ma_MoqTtKyeFMcltfOB/view'),
            crearBotonSecundario(Icons.file_present, 'BIT', 
            'https://app.awesome-table.com/-Ma_Ls5TtESjxf-R0nR5/view'),
          ],
        ),
        TableRow(
          children: [
            crearBotonSecundario(Icons.filter , 'Planos machine shop', 
            'https://app.awesome-table.com/-Ma_LdVicifTVpUecKNG/view'),
            crearBotonSecundario(Icons.filter_alt_sharp, 'Planos proveedores', 
            'https://app.awesome-table.com/-Ma_MbgUQxTBIusYzW_j/view'),
            crearBotonSecundario(Icons.laptop_mac_sharp, 'Pantografo', 
            'https://app.awesome-table.com/-Ma_LzGtzESCjhkTRxa0/view'),
          ],
        ),
        TableRow(
          children: [
            crearBotonSecundario(Icons.file_copy_outlined , 'Procedimientos TH', 
            'https://app.awesome-table.com/-Ma_193GOwspP9AjjijN/view'),
            crearBotonNulo(),
            crearBotonNulo(),
          ],
        ),
      ]
    );
    }