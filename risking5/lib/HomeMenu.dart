import 'package:flutter/material.dart';
import 'WaterSports.dart';

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

  final background = Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.green,
        Colors.lightGreenAccent,
      ]),
    ), //BoxDecoration
  ); //Cont

  final textoinicio = Padding(
    padding: EdgeInsets.all(8.0),
      child: new Text(
        "Home Risking",
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          background,
          new SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new SizedBox(
                      child: textoinicio,
                    ),
                  new GestureDetector(
                      child: leftSection,
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (WaterSportsPage())));
                      },
                    ),
                  SizedBox(height:  5.0),
                    new GestureDetector(
                      child: rightSection,
                      onTap: (){
                        Navigator.pushNamed(context, "/userLog");
                      },
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}

