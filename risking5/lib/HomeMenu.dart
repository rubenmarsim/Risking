import 'package:flutter/material.dart';
import 'login.dart';

class HomeMenu extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePage createState() => new _HomePage();}


class _HomePage extends State<HomeMenu> {
  //static String tag = 'home-page';

  final leftSection = new Container(
      margin: EdgeInsets.all(20.0),
      child: CircleAvatar(
        radius: 72.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/LogoAgua.jpg'),
      )
  );
  final middleSection = new Container(

  );
  final rightSection = new Container(
      margin: EdgeInsets.all(5.0),
      child: CircleAvatar(
        radius: 72.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/Tierra.jpg'),
      )
  );

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
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

    final textoinicio = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Home Risking',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green,
          Colors.lightGreenAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[logo, textoinicio,
          Row(children: <Widget>[
            new GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
              },
            ),
            leftSection,
            rightSection
          ],)
        ],
      ),

    );

    return Scaffold(
      body: body,
    );
  }
}
