import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget crearBotonNulo() {
  return Container(
    height: 250.0,
    width: 180.0,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration( 
      color: Color.fromRGBO(255, 255, 255, 1.0),
      borderRadius: BorderRadius.circular(5.0),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.2),
          blurRadius: 5.0,
          offset: Offset(2.0, 2.0),
        )
      ],
    ),
  );
}