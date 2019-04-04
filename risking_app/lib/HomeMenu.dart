import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomeMenu> {
  //static String tag = 'home-page';
  
  @override
  Widget build(BuildContext context) {    
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/LogoRisking.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Home Risking',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final aguaimg = Padding(
      padding: EdgeInsets.all(16.0),
      child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/LogoAgua.jpg'),
        ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, aguaimg],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
