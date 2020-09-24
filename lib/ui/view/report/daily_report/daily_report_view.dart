import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';
import 'package:multipoint_app_xenius/business_logic/models/daily_report_response.dart';
import 'package:multipoint_app_xenius/business_logic/models/dg.dart';
import 'package:multipoint_app_xenius/business_logic/models/grid.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/daily_report_viewmodel.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';

class DailyReportView extends StatefulWidget {
  static const String id = 'daily_report_view';

  @override
  _DailyReportViewState createState() => _DailyReportViewState();
}

class _DailyReportViewState extends State<DailyReportView> {
  DailyReportViewModel dailyReportViewModel = locator<DailyReportViewModel>();
  List<Grid> gridData;
  List<Dg> dgData;

  @override
  void initState() {
    super.initState();
  }

  void _loadDailyReport() async {
    Response<DailyReportResponse> dailyReportResponse =
        await dailyReportViewModel.getDailyReportResource(2020, 09);

    gridData = dailyReportResponse.body.resource.grid;
    dgData = dailyReportResponse.body.resource.dg;
  }

  List<charts.Series<ChartData, DateTime>> _createSampleData(int index) {
    var myFakeTabletData = [
      new ChartData(new DateTime(2020, 9, 25), 34, 10),
      new ChartData(new DateTime(2020, 9, 26), 54, 455),
      new ChartData(new DateTime(2020, 9, 27), 53, 4443),
      new ChartData(new DateTime(2020, 9, 28), 56, 345),
      new ChartData(new DateTime(2020, 9, 29), 43, 107),
      new ChartData(new DateTime(2020, 9, 30), 24, 108),
      new ChartData(new DateTime(2020, 9, 31), 76, 109),
      new ChartData(DateTime(2020, 10, 1), 90, 1109),
    ];

    var myFakeMobileData = [
      new ChartData(new DateTime(2020, 9, 25), 43, 101),
      new ChartData(new DateTime(2020, 9, 26), 54, 230),
      new ChartData(new DateTime(2020, 9, 27), 64, 450),
      new ChartData(new DateTime(2020, 9, 28), 74, 540),
      new ChartData(new DateTime(2020, 9, 29), 51, 10),
      new ChartData(new DateTime(2020, 9, 30), 61, 102),
      new ChartData(new DateTime(2020, 9, 31), 71, 103),
      new ChartData(new DateTime(2020, 10, 1), 81, 104),
    ];
    var myFakeTabletData1 = [
      new ChartData(new DateTime(2017, 9, 25), 51, 10),
      new ChartData(new DateTime(2017, 9, 26), 61, 102),
      new ChartData(new DateTime(2017, 9, 27), 71, 103),
      new ChartData(new DateTime(2017, 9, 28), 81, 104),
    ];

    var myFakeMobileData2 = [
      new ChartData(new DateTime(2017, 9, 25), 43, 107),
      new ChartData(new DateTime(2017, 9, 26), 24, 108),
      new ChartData(new DateTime(2017, 9, 27), 76, 109),
      new ChartData(DateTime(2017, 9, 28), 90, 1109),
    ];

    if (index == 1) {
      return [
        charts.Series<ChartData, DateTime>(
          id: 'Tablet',
          colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
          domainFn: (ChartData date, _) => date.date,
          measureFn: (ChartData unit, _) => unit.unit,
          data: myFakeTabletData,
        ),
        charts.Series<ChartData, DateTime>(
          id: 'Mobile',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (ChartData date, _) => date.date,
          measureFn: (ChartData unit, _) => unit.unit,
          data: myFakeMobileData,
        ),
      ];
    } else {
      return [
        charts.Series<ChartData, DateTime>(
          id: 'Tablet',
          colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
          domainFn: (ChartData unit, _) => unit.date,
          measureFn: (ChartData unit, _) => unit.unit,
          data: myFakeTabletData1,
        ),
        charts.Series<ChartData, DateTime>(
          id: 'Mobile',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (ChartData unit, _) => unit.date,
          measureFn: (ChartData unit, _) => unit.unit,
          data: myFakeMobileData2,
        ),
      ];
    }
  }

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
          'Daily Report',
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
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(
                        top: 16.0, bottom: 16.0, left: 4.0, right: 4.0),
                    color: Colors.white,
                    shadowColor: Colors.white54,
                    elevation: 16.0,
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 0),
                        child: Center(
                            child: Text(
                          '$dateString'.split('-')[1],
                          style: kLabelTextStyle,
                        )),
                      ),
                      subtitle: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                            width: 500,
                            height: 300,
                            child: charts.TimeSeriesChart(
                              _createSampleData(index),
                              animate: true,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includePoints: true,
                                  includeArea: true,
                                  stacked: true),
                              behaviors: [
                                charts.SlidingViewport(),
                                charts.PanAndZoomBehavior(),
                              ],
                              domainAxis: new charts.DateTimeAxisSpec(
                                  tickFormatterSpec:
                                      new charts.AutoDateTimeTickFormatterSpec(
                                          day: new charts.TimeFormatterSpec(
                                              format: 'd',
                                              transitionFormat: 'dd MMM'))),
                            )),
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

class ChartData {
  final DateTime date;
  final double unit;
  final double amount;

  ChartData(this.date, this.unit, this.amount);
}
