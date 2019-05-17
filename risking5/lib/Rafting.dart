import 'package:flutter/material.dart';
import 'WaterSports.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner :false,
  home:Rafting(),
 ));

class Rafting extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _RaftingPage createState() => new _RaftingPage();
}
class _RaftingPage extends State<Rafting> {
  @override
  Widget build(BuildContext context) {

    final background = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green,
          Colors.lightGreenAccent,
        ]),
      ), //BoxDecoration
    ); //Cont

    final button = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: (
            ) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => WaterSportsPage()));
        },
        padding: EdgeInsets.all(20),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.greenAccent)),
      ),
    );

    final textoinicio = Padding(
      padding: EdgeInsets.all(8.0),
      child: new Text(
        "Rafting",
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );


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
                    button,
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
