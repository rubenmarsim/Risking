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
              color: new Color(0xffc6ff00),             
            ),
          ),
        Column(children: <Widget>[
          CircleAvatar(backgroundColor: Colors.blue,
          radius:75.0,
          child: Icon(
            Icons.shopping_basket,
            color: Colors.deepOrange,
            size: 50.0,
          ),
          ),
        ],)
        ]
      ),
    );
  }
}