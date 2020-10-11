import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';

class NoticeDialog extends StatefulWidget {
  @override
  _NoticeDialogState createState() => _NoticeDialogState();
}

class _NoticeDialogState extends State<NoticeDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Notice",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: kColorPrimary,
        elevation: 2,
      ),
      body: Lists(),
    );
  }
}

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Text(
                '$index',
                style: kLabelTextStyle,
              ),
            ),
          );
        });
  }
}
