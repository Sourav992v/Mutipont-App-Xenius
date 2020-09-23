import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';
import 'package:multipoint_app_xenius/constants.dart';

List<charts.Series<LinearSales, DateTime>> _createSampleData() {
  final myFakeDesktopData = [
    new LinearSales(new DateTime(2020, 09, 11), 5),
    new LinearSales(new DateTime(2020, 09, 12), 25),
    new LinearSales(new DateTime(2020, 09, 13), 100),
    new LinearSales(new DateTime(2020, 09, 14), 75),
  ];

  var myFakeTabletData = [
    new LinearSales(new DateTime(2020, 09, 11), 10),
    new LinearSales(new DateTime(2020, 09, 12), 50),
    new LinearSales(new DateTime(2020, 09, 13), 200),
    new LinearSales(new DateTime(2020, 09, 14), 150),
  ];

  var myFakeMobileData = [
    new LinearSales(new DateTime(2020, 09, 11), 15),
    new LinearSales(new DateTime(2020, 09, 12), 75),
    new LinearSales(new DateTime(2020, 09, 13), 300),
    new LinearSales(new DateTime(2020, 09, 14), 225),
  ];

  return [
    new charts.Series<LinearSales, DateTime>(
      id: 'Desktop',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (LinearSales sales, _) => sales.year,
      measureFn: (LinearSales sales, _) => sales.sales,
      data: myFakeDesktopData,
    ),
    new charts.Series<LinearSales, DateTime>(
      id: 'Tablet',
      colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      domainFn: (LinearSales sales, _) => sales.year,
      measureFn: (LinearSales sales, _) => sales.sales,
      data: myFakeTabletData,
    ),
    new charts.Series<LinearSales, DateTime>(
      id: 'Mobile',
      colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      domainFn: (LinearSales sales, _) => sales.year,
      measureFn: (LinearSales sales, _) => sales.sales,
      data: myFakeMobileData,
    ),
  ];
}

class MonthlyReportView extends StatefulWidget {
  static const String id = 'monthly_report';

  @override
  _MonthlyReportViewState createState() => _MonthlyReportViewState();
}

class _MonthlyReportViewState extends State<MonthlyReportView> {
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
          'Monthly Report',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
          child: SizedBox(
            height: double.infinity,
            child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(
                        top: 16.0, bottom: 16.0, left: 4.0, right: 4.0),
                    color: Colors.white,
                    shadowColor: Colors.white70,
                    elevation: 16.0,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 0),
                        child: Center(
                            child: Text(
                          'one',
                          style: kLabelTextStyle,
                        )),
                      ),
                      subtitle: Container(
                        height: 300.0,
                        child: charts.TimeSeriesChart(
                          _createSampleData(),
                          animate: true,
                          behaviors: [
                            new charts.RangeAnnotation([
                              new charts.LineAnnotationSegment(
                                  new DateTime(2020, 09, 11),
                                  charts.RangeAnnotationAxisType.domain,
                                  startLabel: 'Sep'),
                              new charts.LineAnnotationSegment(
                                  new DateTime(2020, 09, 14),
                                  charts.RangeAnnotationAxisType.domain,
                                  endLabel: 'Sep'),
                            ]),
                            new charts.SeriesLegend(
                              position: charts.BehaviorPosition.bottom,
                              horizontalFirst: true,
                              cellPadding:
                                  new EdgeInsets.only(right: 4.0, bottom: 4.0),
                              showMeasures: true,
                              measureFormatter: (num value) {
                                return value == null ? '-' : '$value';
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
        Positioned(top: 25.0, right: 25.0, child: datePickerDaily(context)),
      ]),
    );
  }

  Container datePickerDaily(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: GestureDetector(
        onTap: () {
          _cupertinoDatePicker(context);
        },
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
                  child: Center(child: Text('$dateString'.split('-')[2])),
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
      ),
    );
  }
}

/// Sample linear data type.

class LinearSales {
  final DateTime year;
  final int sales;

  LinearSales(this.year, this.sales);
}
