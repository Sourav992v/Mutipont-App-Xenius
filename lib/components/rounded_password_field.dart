import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/components/text_field_container.dart';
import 'package:multipoint_app_xenius/constants.dart';

class RoudedPasswordField extends StatelessWidget {
  final String hintText;

  final bool obscureText;

  final TextEditingController passwordController;

  RoudedPasswordField(
      {this.passwordController, this.hintText, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obscureText,
        controller: passwordController,
        cursorColor: kTextColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kTextColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
