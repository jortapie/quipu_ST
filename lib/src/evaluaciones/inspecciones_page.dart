import 'package:flutter/material.dart';
import 'package:st_quipu_v2/src/Utilities/boton_formulario.dart';
import 'package:st_quipu_v2/src/Utilities/home_button.dart';

import 'package:st_quipu_v2/src/Utilities/header/header_desktop.dart';

class InspeccionesPage extends StatelessWidget {
  const InspeccionesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: crearHeader('Inspecciones', context),
      body: ListView(
        padding: EdgeInsets.all( 8.0 ),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
            child: Text('Inspecciones de motores 4x4', textAlign: TextAlign.left, 
              style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black,)),
          ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Observaciones 4x4',
              'https://docs.google.com/forms/d/e/1FAIpQLSfylo2NgUnL_GTyimHNZtckwVj2uZbhAgS9hvPjNXyx3iKZng/viewform',
              ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Sistema de lubricación',
              'https://docs.google.com/forms/d/e/1FAIpQLSfloIkIrmFhmfu8I8CHybEpafEeW-yigJu_kpsaY2LQCdJclw/viewform',
              ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Sistema de combustible',
              'https://docs.google.com/forms/d/e/1FAIpQLSexj0uLzZiOBUFOTVXgAWeDDVqZam8mjP9CoCmHSWdmfiMtXA/viewform',
              ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Sistema de refrigeración',
              'https://docs.google.com/forms/d/e/1FAIpQLSeYHbDtU43Sb3LBe7XKgohOPa2YhN7e0ZnmdtskBongN_7vbA/viewform',
              ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Sistema motor básico',
              'https://docs.google.com/forms/d/e/1FAIpQLSdw6PbvKwyMtbPCsdVjni2RZM9QdAi7BsJ_AQwCv_EINditYw/viewform',
            ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Alineamiento de bellows',
              'https://docs.google.com/forms/d/e/1FAIpQLSeQtNnK99RpXsTvuoFL33pE_dFoGdcJZwQTX7pdDLUK64Q83A/viewform',
            ),
            Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
            child: Text('Extension de PCR', textAlign: TextAlign.left, 
              style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.black,)),
          ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Inspección de diferencial',
              'https://docs.google.com/forms/d/e/1FAIpQLSdBxXL4IScykZnSU_Bf0wCB6UYWrkbPsM0j-thn1Q0l47WW2w/viewform',
              ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Inspección de mando final',
              'https://docs.google.com/forms/d/e/1FAIpQLScvStSxr0hOHrImbWYhUUKtsGldNi7bLjk_PBgSiCiy8bOoNw/viewform',
              ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Inspección de transmisión',
              'https://docs.google.com/forms/d/e/1FAIpQLScGyQDK5EVV4NpwxTKnObVG5pIHnUphfc7wCxM5HEYC9_OhlQ/viewform',
              ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Inspección de convertidor',
              'https://docs.google.com/forms/d/e/1FAIpQLScQ6MXZaCnh59OyxeyeO9q6q1EVSxoHSpCZn3qFVxECpvKjjA/viewform',
            ),
          Divider(height: 5.0),
            crearbotonformulario(
              'Inspección de sello duo cone',
              'https://docs.google.com/forms/d/e/1FAIpQLScItCb6-qqDbhE_h0mDXHxn9fa_tjO75cs-cH-9Nuwp9pdA8w/viewform',
            ),
        ],
      ),
      floatingActionButton: crearHomeButton(context),
    );
  }
}