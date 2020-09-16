import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';

class CheckBoxCostume extends StatelessWidget {
  final String title;
  final bool value;
  final Function checked;
  CheckBoxCostume({
    this.title,
    this.value,
    this.checked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: value,
            onChanged: checked,
            activeColor: kColorPrimaryDark,
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: "Open Sans",
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
