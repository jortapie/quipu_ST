import 'package:flutter/material.dart';

import 'consultastecnicas/consultastecnicas_home_page.dart';
import 'evaluaciones/home_page/evaluaciones_home_page.dart';

import 'informaciontecnica/informaciontecnica_home_page.dart';
import 'informestecnicos/informestecnicos_home_page.dart';
import 'afa/afa_homepage.dart';

import 'informaciontecnicaMSH/ITMSH_home_page.dart';
import 'rehaceres/rehaceres_homepage.dart';
import 'nuestroequipo/nuestroequipo.dart';

import 'Utilities/header/header_mobile.dart';
import 'Utilities/boton_principal.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeadermobile('SOPORTE TÉCNICO', context),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(217, 217, 217, 1.0),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 25.0),
                _crearBotonesPrincipales(context),
              ],
            )
          )
        ]
      ),
    );
  }

  Widget _crearBotonesPrincipales(context) {
    return Table(
      children: [
        TableRow(
          children: [
            crearBotonPrincipal(Icons.info, 'Información técnica CRC', context, InformacionTecPage()),
            crearBotonPrincipal(Icons.insert_drive_file,'Información técnica MSH', context, InformacionTecnicaMSHPage()),
          ],
        ),
        TableRow(
          children: [
            crearBotonPrincipal(Icons.error_outline, 'Rehaceres', context, RehaceresPage()),
            crearBotonPrincipal(Icons.pageview, 'AFA', context, AFAPage()),
          ],
        ),
        TableRow(
          children: [
            crearBotonPrincipal(Icons.check_box, 'Evaluaciones', context, EvaluacionesPage() ),
            crearBotonPrincipal(Icons.build, 'Informes Técnicos de reparación', context, InformestecnicosPage()),
          ],
        ),
        TableRow(
          children: [
            crearBotonPrincipal(Icons.question_answer, 'Consultas Técnicas', context, ConsultastecnicasPage()),
            crearBotonPrincipal(Icons.people, 'Nuestro equipo', context, Nuestroequipo()),
          ],
        ),
      ],
    );
  }
}