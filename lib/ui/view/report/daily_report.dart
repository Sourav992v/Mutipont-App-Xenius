import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DailyReportView extends StatefulWidget {
  static const String id = 'daily report';
  @override
  _DailyReportViewState createState() => _DailyReportViewState();
}

class _DailyReportViewState extends State<DailyReportView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          'Daily Report',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      body: ClipRRect(
        clipBehavior: Clip.antiAlias,
        child: Container(
          color: Colors.white70,
          child: Stack(
            children: [
              Positioned(
                top: 25.0,
                right: 25.0,
                child: Container(
                    height: 72.0,
                    width: 48.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          height: 24.0,
                          width: 32.0,
                          color: Colors.white,
                          child: Center(child: Text('18')),
                        ),
                        Container(
                          height: 24.0,
                          width: 48.0,
                          color: Colors.blueAccent,
                          child: Center(
                              child: Text(
                            'Sep',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 24.0,
                          width: 48.0,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            '2020',
                            style: TextStyle(color: Colors.black),
                          )),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
