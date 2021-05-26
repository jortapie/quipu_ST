import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/home_page.dart';

// Correccion de package para configuracion web https://stackoverflow.com/questions/57992350/flutter-web-create-issue-in-existing-flutter-app
// Procedimiento para hacer deploy de la aplicacion https://www.filledstacks.com/post/create-and-deploy-a-flutter-web-app/
// https://www.youtube.com/watch?app=desktop&v=CAYa9AQGtdU&ab_channel=PaulHalliday

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Key get key => super.key;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Departamento de Soporte Técnico',
      initialRoute: 'home',

      routes: {
        'home' : ( BuildContext context ) => HomePage(),
      }
    );
  }
}