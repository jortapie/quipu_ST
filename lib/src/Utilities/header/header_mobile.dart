
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize crearHeadermobile(titulo, context) {
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
                  padding: EdgeInsets.only( top: 50.0, right: 10.0),
                  child: Image.asset('Logo2.png',
                    fit: BoxFit.cover,
                    height:40,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric( vertical: 60.0),
                  alignment: Alignment.bottomCenter,
                  child: 
                    Text('SOPORTE AL PRODUCTO', textAlign: TextAlign.center, 
                        style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 10.0, color: Colors.white,
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
                    padding: EdgeInsets.symmetric( vertical: 60.0),
                    alignment: Alignment.bottomCenter,
                    child: 
                      Text('QUIPU v2.3.0', textAlign: TextAlign.center, 
                        style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 10.0, color: Colors.white,
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
                  style: TextStyle(fontFamily: 'RobotoMono', fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white,
                  decoration: TextDecoration.underline, decorationColor: Color.fromRGBO(255, 192, 0, 1.00)
                  )
                ),
            ),
          ),
        ),
  );
}


