import 'package:flutter/material.dart';

class RoundedButtonRecharge extends StatelessWidget {
  final String text;
  final Function press;
  final Color color;
  final Color textColor;
  final double width, height;

  const RoundedButtonRecharge(
      {this.text,
      this.press,
      this.color,
      this.textColor,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: textColor),
          ),
        ),
      ),
    );
  }
}
