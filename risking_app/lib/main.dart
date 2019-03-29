import 'package:flutter/material.dart';
import 'splash_screen_one.dart';

void main() => runApp(MaterialApp(
  title: 'Risking',
  theme: ThemeData(
    primaryColor: new Color(0xff622f74),
    accentColor: Colors.green
  ),
  debugShowCheckedModeBanner :false,
  home:SplashScreenOne(),
));