import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Center(
          child: Scaffold(
            backgroundColor: Colors.blueGrey[900],
            appBar: AppBar(
              backgroundColor: Colors.blueGrey[600],
              title: Text(
                "I am Rich",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white30,
                ),
              ),
            ),
            body: Center(
              child: Container(
                child: Image.asset(
                  'assets/images/pixel_wallpapers.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
