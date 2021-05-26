
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

PreferredSize crearHeader(titulo, context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(150), 
        child: AppBar(
          automaticallyImplyLeading: false,
          primary: true,
          backgroundColor: Colors.black,
          title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only( top: 40.0, right: 20.0),
                  child: Image.asset(path('Logo2.png'),
                    fit: BoxFit.cover,
                    height:70,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric( vertical: 60.0),
                  alignment: Alignment.bottomCenter,
                  child: 
                    Text('SOPORTE AL PRODUCTO', textAlign: TextAlign.center, 
                        style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white,
                        )
                      ),
                  ),  
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(60.0),
                    alignment: Alignment.bottomCenter,
                    child: 
                      Text('QUIPU v2.0.0', textAlign: TextAlign.center, 
                        style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.white,
                        )
                      ),
                  )
                ),
              ],
          ),
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 50),
            child: Container(
              padding: EdgeInsets.only(bottom: 30.0),
              alignment: Alignment.bottomCenter,
              child: 
                Text(titulo, textAlign: TextAlign.center, 
                  style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white,
                  decoration: TextDecoration.underline, decorationColor: Color.fromRGBO(255, 192, 0, 1.00)
                  )
                ),
            ),
          ),
        ),
  );
}

// Solución al display de imágenes en Flutter Web 
// https://stackoverflow.com/questions/61301598/how-can-i-display-asset-images-on-flutter-web

String path(str) {
  return (kIsWeb) ? 'assets/$str' : str;
}


/* child: Image.asset(path('Logo2.png'),
                    fit: BoxFit.cover,
                    height:70,
                  ), */

