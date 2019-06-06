import 'package:flutter/material.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(TITLE)),
      body: Container(
        color: Colors.blueGrey[500]
      )
    );
  }
}