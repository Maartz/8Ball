import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(EightBall());

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

  int ballNumber = 1;

  void askBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: askBall,
              child: Image.asset('images/ball$ballNumber.png'),
            )
          ],
        ),
      ),
    );
  }
}
