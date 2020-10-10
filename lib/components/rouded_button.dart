import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton(
      {Key key, this.text, this.press, this.color, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: RaisedButton.icon(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
          elevation: 5.0,
          color: color,
          onPressed: press,
          icon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          label: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
