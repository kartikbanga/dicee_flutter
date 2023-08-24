import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftnumber=1,rightnumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  leftnumber=Random().nextInt(6)+1;
                  rightnumber=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$leftnumber.png'),
            ),
          ),
          Expanded(child: TextButton(
            onPressed: (){
              setState(() {
                rightnumber=Random().nextInt(6)+1;
                leftnumber=Random().nextInt(6)+1;
              });
            },
            child: Image.asset('images/dice$rightnumber.png'),
          ),
          ),
        ],
      ),
    );
  }
}
