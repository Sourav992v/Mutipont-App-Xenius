import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/components/text_field_container.dart';
import 'package:multipoint_app_xenius/constants.dart';

class RoudedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController loginIdController;

  RoudedInputField({
    this.loginIdController,
    this.hintText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: loginIdController,
      cursorColor: kTextColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        prefixIcon: Icon(
          icon,
          color: kTextColor,
        ),
        hintText: hintText,
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
