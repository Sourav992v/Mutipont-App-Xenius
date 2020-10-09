import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';

class DgEventLogging extends StatefulWidget {
  @override
  _DgEventLoggingState createState() => _DgEventLoggingState();
}

class _DgEventLoggingState extends State<DgEventLogging> {
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
        title: Text("DG Event Logging",
            style: TextStyle(fontWeight: FontWeight.bold)),
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
      padding: EdgeInsets.all(16),
      itemCount: 16,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
                child: Text(
                  'DG',
                  style: TextStyle(
                    color: kColorAccentRed,
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Start Time', style: kLabelTextStyle),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text('End Time', style: kLabelTextStyle),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '09-10-2020',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          color: kColorSecondary),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('20:34:45', style: kLabelTextStyle),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text('12:34:45', style: kLabelTextStyle),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
