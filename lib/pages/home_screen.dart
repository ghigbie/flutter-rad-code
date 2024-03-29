import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:radcode/widgets/post_lists.dart';

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
            PostList()
          ]
        ),
      )
    );
  }
}