import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyStatefulWidget());

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var ballnumber = 1;

  void ateBall() {
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Center(child: Text("Ask Me Anything.")),
          ),
          backgroundColor: Colors.blue.shade300,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: FlatButton(
                  child: Image.asset(
                    "images/ball$ballnumber.png",
                    width: 300,
                  ),
                  onPressed: ateBall,
                ),
              ),
            ],
          )),
    );
  }
}
