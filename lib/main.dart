// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("tataboq"),
        backgroundColor: Colors.indigo[800],
        elevation: 0,
      ),
      // ignore: prefer_const_constructors
      body: tataboq(),
    ),
  ));
}

class tataboq extends StatefulWidget {
  const tataboq({Key? key}) : super(key: key);

  @override
  _tataboqState createState() => _tataboqState();
}

class _tataboqState extends State<tataboq> {
  var a = 1, b = 1;
  changenumber() {
    Random random = Random();
    a = random.nextInt(9) + 1;
    b = random.nextInt(9) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          a == b ? "That's a match" : "Try Again",
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              changenumber();
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/image-$a.png',
                width: 150,
                height: 150,
              ),
              Image.asset(
                'images/image-$b.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
