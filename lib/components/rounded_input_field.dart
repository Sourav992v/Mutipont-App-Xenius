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
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.number,
        controller: loginIdController,
        cursorColor: kTextColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kTextColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
