import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';

void main() => runApp(MaterialApp(
  title: 'Risking',
  theme: ThemeData(
    primaryColor: new Color(0xff689f38),
    accentColor: Colors.blue
  ),
  debugShowCheckedModeBanner :false,
  home:SplashScreenOne(),
  routes: route,
));

var route=<String,WidgetBuilder>{
  "/login":(BuildContext context)=> LoginPage(),
  //"/menu":(BuildContext context)=> HomeMenu(),
};


class  SplashScreenOne extends StatefulWidget {
  @override
  _SplashScreenOneState createState() => _SplashScreenOneState();
}
class _SplashScreenOneState extends State<SplashScreenOne> {

  @override
    void initState(){
      super.initState();
      Timer(Duration(seconds: 5),()=> Navigator.pushNamed(context, "/login") );
    }


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
          CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage('assets/LogoRisking.png'),
            radius:50.0,
            
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0)
            ),
            Text('Cargando...',
            style: TextStyle(color:Colors.blue,
            fontSize: 24.0),
            ),
        ],)
        ]
      ),
    );
  }
}