import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:st_quipu_v2/src/Utilities/launchURL.dart';

  Widget crearbotonformulario (String form, String url) {
      return GestureDetector(
        onTap: () {
          launchURL(url);
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          height: 60.0,
          margin: EdgeInsets.all(5.0),
          child: Row( 
            children: <Widget>[
              Icon(Icons.done, size: 30.0, color: Color.fromRGBO(253, 126, 27, 1.0)),
              SizedBox( width: 15.0 ),
              Text(form, textAlign: TextAlign.left, 
                style: TextStyle(fontFamily: 'RobotoMono', fontSize: 16.0, color: Colors.black,) )
            ],
          ),
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
        ),
      );
  }