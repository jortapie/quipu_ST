import 'package:flutter/material.dart';

import '../home_page.dart';

 FloatingActionButton crearHomeButton(context) {
  return FloatingActionButton(  
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage() )
      );
    },
    backgroundColor: Color.fromRGBO(253, 126, 27, 1.0),
    child: Icon(Icons.home)
  );
 }