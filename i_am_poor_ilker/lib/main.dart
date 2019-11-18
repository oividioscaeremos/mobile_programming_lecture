import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            centerTitle: true,
            title: Text("I am Poor"),
            backgroundColor: Colors.grey,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Well, I'm quite poor.",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Image.asset(
                    "images/poor.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
