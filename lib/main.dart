import 'package:flutter/material.dart';
import 'constants.dart';
import 'pages/home_screen.dart';

void main () => runApp(RadCodeApp());

class RadCodeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TITLE,
      theme: ThemeData.dark(),
      initialRoute: '/',
      home: HomeScreen(),
    );
  }
}