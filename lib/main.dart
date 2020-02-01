import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Ask Me Anything'),
            ),
            backgroundColor: Colors.blue[900],
          ),
          body: MyApp(),
          backgroundColor: Colors.blueAccent,
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int name = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            name = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$name.png'),
      ),
    );
  }
}
