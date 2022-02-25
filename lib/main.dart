import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          //elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.blue[700],
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MagicBall> {
  int ball = 1;

  void rollMagicBall() {
    ball = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                child: Image.asset('images/ball$ball.png'),
                onPressed: () {
                  setState(() {
                    rollMagicBall();
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
