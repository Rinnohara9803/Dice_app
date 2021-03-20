import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Sagar());
}

class Sagar extends StatefulWidget {
  @override
  _SagarState createState() => _SagarState();
}

class _SagarState extends State<Sagar> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Diceee Game',
              style: TextStyle(
                fontFamily: 'Ranchers',
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "You've got 2 Chance.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ranchers',
                  color: Colors.black54,
                  fontSize: 40.0,
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              Random random = new Random();
                              leftDiceNumber = random.nextInt(6) + 1;
                              print('left button pressed.');
                            });
                          },
                          child: Image.asset('images/dice$leftDiceNumber.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              Random random = new Random();
                              rightDiceNumber = random.nextInt(6) + 1;
                              print('right button pressed.');
                            });
                          },
                          child: Image.asset('images/dice$rightDiceNumber.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
