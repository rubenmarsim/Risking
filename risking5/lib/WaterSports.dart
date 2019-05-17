import 'package:flutter/material.dart';
import 'Rafting.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterSportsPage(),
    ));

class WaterSportsPage extends StatefulWidget {
  static String tag = 'WaterSports-page';

  @override
  _WaterSportsPage createState() => new _WaterSportsPage();
}

class _WaterSportsPage extends State<WaterSportsPage> {
  @override
  Widget build(BuildContext context) {
    final background = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green,
          Colors.lightGreenAccent,
        ]),
      ), //BoxDecoration
    );

    final textoinicio = Padding(
      padding: EdgeInsets.all(8.0),
      child: new Text(
        "WaterSports",
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final raftin = new Container(
      height: 150,
      width: 255,
      child: Card(
        child: Image.asset('assets/raft.jpg'),
      ),
    );

    final barranq = new Container(
      height: 150,
      width: 255,
      child: Card(
        child: Image.asset('assets/barranq.jpg'),
      ),
    );

    final subma = new Container(
      height: 150,
      width: 255,
      child: Card(
        child: Image.asset('assets/subma.jpg'),
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
                  new GestureDetector(
                    child: raftin,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (Rafting()),
                        ),
                      );
                    },
                  ),
                  new GestureDetector(
                    child: barranq,
                  ),
                  new GestureDetector(
                    child: subma,
                  ),
                ],
              ),
            ))
          ],
        ),
    );
  }
}
