import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/boton_secundario.dart';
import 'package:st_quipu_v2/src/Utilities/header/header_mobile.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

class ConsultasMobile extends StatelessWidget {
  const ConsultasMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeadermobile('CONSULTAS TÉCNICAS CRC', context),
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
            crearBotonSecundario(Icons.question_answer, 'Ingreso de consultas técnica', 
            'https://docs.google.com/forms/d/e/1FAIpQLScYvS81f-bZj8pXHwk8XFW9bFr_NGThIPtFddsGOatvuq11OA/viewform'),
          ],
        ),
        TableRow(
          children: [
            crearBotonSecundario(Icons.storage, 'Repositorio de consultas técnicas', 
            'https://app.awesome-table.com/-MNoxxa3WAUuEuNh7vyk/view'),
          ],
        ),
      ]
    );
    }
}