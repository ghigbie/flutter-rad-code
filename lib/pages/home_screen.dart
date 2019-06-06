import 'package:flutter/material.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget{
  HomeScreen(): super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 80, left: 15),
          child: Text('iOS Development')
        )
      ),
      appBar: AppBar(
        title: Text("RadCode")
      ),
      body: Center(
        child: Column(
          children: [
            Text('List item 1'),
            Text('List item 2'),
            Text('List item 3')
          ]
        ),
      )
    );
  }
}