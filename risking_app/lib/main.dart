import 'package:flutter/material.dart';
import 'splash_screen_one.dart';

void main() => runApp(MaterialApp(
  title: 'Risking',
  theme: ThemeData(
    primaryColor: new Color(0xff689f38),
    accentColor: Colors.blue
  ),
  debugShowCheckedModeBanner :false,
  home:SplashScreenOne(),
));