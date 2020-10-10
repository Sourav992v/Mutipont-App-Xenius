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
    return TextField(
      obscureText: obscureText,
      controller: passwordController,
      cursorColor: kTextColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        hintText: "Password",
        prefixIcon: Icon(
          Icons.lock,
          color: kTextColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kColorPrimaryDark),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
