import 'package:flutter/material.dart';
import 'constants.dart';


void main () => runApp(RadCodeApp());

class RadCodeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TITLE,
      theme: ThemeData(
        primarySwatch: Colors.red[600]
      ),
      initialRoute: '/',
      home: HomeScreen(),
    );
  }
}