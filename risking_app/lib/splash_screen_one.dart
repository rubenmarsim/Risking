import 'package:flutter/material.dart';


class  SplashScreenOne extends StatefulWidget {
  @override
  _SplashScreenOneState createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  @override
  Widget build(BuildContext context){    
    return Scaffold(
      body:Stack(
        fit:StackFit.expand,
        children: <Widget>[
          Container(            
            decoration: BoxDecoration(
              color: new Color(0xff689f38),             
            ),
          ),
        Column(mainAxisAlignment: MainAxisAlignment.center,
        
          children: <Widget>[          
          CircleAvatar(backgroundColor: Colors.blue,
          radius:50.0,
          child: Icon(
            Icons.map,
            color: Colors.deepOrange,
            size: 30.0,
          ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0)
            ),
            Text('Cargando',
            style: TextStyle(color:Colors.blue,
            fontSize: 24.0),
            ),
        ],)
        ]
      ),
    );
  }
}

