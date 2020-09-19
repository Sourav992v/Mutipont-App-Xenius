import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class DailyReportView extends StatefulWidget {
  static const String id = 'daily report';
  @override
  _DailyReportViewState createState() => _DailyReportViewState();
}

class _DailyReportViewState extends State<DailyReportView> {
  String dateString =
      DateFormat('yyyy-MMM-dd').format(DateTime.now().toLocal());

  _selectedDate(BuildContext context) async {
    DateTime selectedDate = DateTime.now();
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2018),
        lastDate: DateTime(2025));
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        dateString = DateFormat('yyyy-MMM-dd').format(pickedDate);
      });
    }
  }

  _cupertinoDatePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          DateTime selectedDate = DateTime.now();
          return Container(
            height: MediaQuery.of(context).copyWith().size.height / 3,
            color: Colors.white,
            child: Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0))),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (pickedDate) {
                  if (pickedDate != null && pickedDate != selectedDate) {
                    setState(() {
                      dateString = DateFormat('yyyy-MMM-dd').format(pickedDate);
                    });
                  }
                },
                initialDateTime: selectedDate,
                minimumYear: 2020,
                maximumYear: 2025,
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
          'Daily Report',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white70,
        child: GestureDetector(
          onTap: () {
            _cupertinoDatePicker(context);
          },
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
                          child:
                              Center(child: Text('$dateString'.split('-')[2])),
                        ),
                        Container(
                          height: 24.0,
                          width: 48.0,
                          color: Colors.blueAccent,
                          child: Center(
                              child: Text(
                            '$dateString'.split('-')[1],
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          height: 24.0,
                          width: 48.0,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            '$dateString'.split('-')[0],
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
