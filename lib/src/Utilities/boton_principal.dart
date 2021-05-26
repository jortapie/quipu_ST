import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget crearBotonPrincipal(IconData icon, String texto, context, _page) {
    return GestureDetector(
     onTap: () {
       Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => _page ));
     },
     child: Container(
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
       child: Container(
         padding: EdgeInsets.all(15.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
            SizedBox(height: 15.0,),
            Container(
               child: Icon(icon, size: 90.0, color: Color.fromRGBO(255, 192, 0, 1.0)),
             ),
            SizedBox(height: 10.0,),
            Text(texto, style: TextStyle( fontWeight: FontWeight.bold, color: Color.fromRGBO(89, 89, 89, 1.0) ), textAlign: TextAlign.center,),
            SizedBox(height: 10.0,),
           ]
         ),
       ),
    ),
  );
 } 