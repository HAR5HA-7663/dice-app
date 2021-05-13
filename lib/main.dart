import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice-Roll',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Tesla',
            ),
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var variablesleft = 1;
  var variablesright = 5;
  var rng = new Random();
  void changedice() {
    setState(() {
      variablesleft = (rng.nextInt(6) + 1);
      variablesright = (rng.nextInt(6) + 1);
      // print('left button $variablesleft');
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: TextButton(
                onPressed: () {
                  changedice();
                },
                child: Image.asset('images/dice$variablesleft.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: TextButton(
                onPressed: () {
                  changedice();
                },
                child: Image.asset('images/dice$variablesright.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
