import 'dart:ui' as prefix0;

import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static Color inActiveCardColor = Color(0xff141a3c);
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  updateColor(bool gender) {
    if (gender) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = Color(0xff272a4e);
      } else {
        maleCardColor = inActiveCardColor;
      }
    } else {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = Color(0xff4c2747);
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff090f32)),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(true);
                          });
                        },
                        child: ReusableCard(
                          cardChild: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30.0,
                              ),
                              Icon(
                                FontAwesomeIcons.mars,
                                size: 80.0,
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                "Male",
                              ),
                            ],
                          ),
                          color: maleCardColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(false);
                          });
                        },
                        child: ReusableCard(
                          cardChild: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30.0,
                              ),
                              Icon(
                                FontAwesomeIcons.venus,
                                size: 80.0,
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                "Female",
                              ),
                            ],
                          ),
                          color: femaleCardColor,
                          text: "Canım",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: Color(0xff141a3c),
                        text: "Selam",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: Color(0xff141a3c),
                        text: "Selam",
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: Color(0xff141a3c),
                        text: "Selam",
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xffeb1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight,
              )
            ],
          ),
        ),
      ),
    );
  }
}
