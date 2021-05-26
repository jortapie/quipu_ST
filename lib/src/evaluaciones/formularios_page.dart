import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/boton_formulario.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';
import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';

class FormulariosPage extends StatelessWidget {
  const FormulariosPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('Formularios', context),
      body: ListView(
        padding: EdgeInsets.all( 8.0 ),
        children: <Widget>[
          Divider(),
          crearbotonformulario(
            'Formualario de registro',
            'https://docs.google.com/forms/d/e/1FAIpQLScwhhsJLALuPARSDPXuTg7uDyMeKQZyFqK3xT_GJMtHhnzB1A/viewform',
            ),
          Divider(height: 5.0),
          crearbotonformulario(
            'Formulario de evaluación',
            'https://docs.google.com/forms/d/e/1FAIpQLSfSuVo9WYN8ZEhTVd6J3WLwyVTj_ogwKDfcWSdeUKEH4C8mwA/viewform',
            ),
          Divider(height: 5.0),
          crearbotonformulario(
            'Formulario de despacho de componente',
            'https://docs.google.com/forms/d/e/1FAIpQLSet_bWRspfLdgzqyOD_KD1R72bu_-G5XlJ-axgnNi2xMLi4tw/viewform',
            ),
        ],
      ),
      floatingActionButton: crearHomeButton(context),
    );
  }
}