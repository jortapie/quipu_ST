import 'package:flutter/material.dart';
import 'package:st_quipu_v2/src/Utilities/boton_secundario.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';

class RepositorioPage extends StatelessWidget {
  const RepositorioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('Repositorio de formularios', context),
      body: ListView(
        padding: EdgeInsets.all( 8.0 ),
        children: <Widget>[
          Divider(),
          crearBotonSecundario(Icons.storage,
            'Repositorio de registro de componente',
            'https://app.awesome-table.com/-MDFuKoEhGAWRJogrIvV/view',
            ),
          Divider(height: 5.0),
          crearBotonSecundario(Icons.storage,
            'Repositorio evaluacion de componente',
            'https://app.awesome-table.com/-MCK8fcSRfxCq_TSQhdX/view',
            ),
          Divider(height: 5.0),
          crearBotonSecundario(Icons.storage,
            'Repositorio de observaciones',
            'https://app.awesome-table.com/-MDRHTrA2X6pvSdjI5n2/view',
            ),
          Divider(height: 5.0),
          crearBotonSecundario(Icons.storage,
            'Repositorio de despacho de componente',
            'https://app.awesome-table.com/-MDFwlkggvIt_c19dJJc/view',
            ),
        ],
      ),
      floatingActionButton: crearHomeButton(context),
    );
  }
}