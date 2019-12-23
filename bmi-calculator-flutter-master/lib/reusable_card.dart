import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, @required this.text, this.cardChild});

  final Color color;
  final String text;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.cardChild,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: this.color, //Color(0xff141a3c)
      ),
    );
  }
}
