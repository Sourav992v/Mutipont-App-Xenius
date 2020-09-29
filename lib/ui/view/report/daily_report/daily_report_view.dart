import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';
import 'package:multipoint_app_xenius/business_logic/models/daily_report_response.dart';
import 'package:charts_flutter/src/text_element.dart' as chartsTextElement;
import 'package:charts_flutter/src/text_style.dart' as chartsTextStyle;
import 'package:multipoint_app_xenius/business_logic/viewmodels/daily_report_viewmodel.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:multipoint_app_xenius/ui/view/base_view.dart';

class DailyReportView extends StatefulWidget {
  static const String id = 'daily_report_view';

  @override
  _DailyReportViewState createState() => _DailyReportViewState();
}

class _DailyReportViewState extends State<DailyReportView> {
  DailyReportViewModel dailyReportViewModel = locator<DailyReportViewModel>();

  DailyReportResponse dailyReportResponse;

  String dateString =
      DateFormat('yyyy-MMM-dd').format(DateTime.now().toLocal());
  int day = DateTime.now().toLocal().day;
  int month = DateTime.now().toLocal().month;
  int year = DateTime.now().toLocal().year;

  @override
  void initState() {
    initDailyChart(year, month);
    super.initState();
  }

  void initDailyChart(int year, int month) {
    dailyReportViewModel.getDailyReportResource(year, month).then((value) {
      setState(() {
        dailyReportResponse = value.body;
      });
    });
  }

  List<charts.Series<ChartData, DateTime>> _createSampleData(int index) {
    List<int> date = List();
    if (date.length != null) {
      date = dailyReportResponse.resource.grid.date.asList();
    } else {
      date.clear();
    }
    List<double> gridUnit =
        dailyReportResponse.resource.grid.grid_unit.asList();
    List<double> gridAmount =
        dailyReportResponse.resource.grid.grid_amt.asList();

    List<double> dgUnit = dailyReportResponse.resource.dg.dg_unit.asList();
    List<double> dgAmount = dailyReportResponse.resource.dg.dg_amt.asList();

    List<ChartData> chartDataGridUnit = List();
    List<ChartData> chartDataDgUnit = List();
    List<ChartData> chartDataGridAmt = List();
    List<ChartData> chartDataDgAmt = List();

    for (int i = date.length - 1; i > 0; i--) {
      chartDataGridUnit
          .add(ChartData(DateTime(year, month, date[i]), gridUnit[i]));
      chartDataDgUnit.add(ChartData(DateTime(year, month, date[i]), dgUnit[i]));

      chartDataGridAmt
          .add(ChartData(DateTime(year, month, date[i]), gridAmount[i]));
      chartDataDgAmt
          .add(ChartData(DateTime(year, month, date[i]), dgAmount[i]));
    }

    if (index == 1) {
      return [
        charts.Series<ChartData, DateTime>(
          id: 'Grid kWh',
          colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
          domainFn: (ChartData date, _) => date.date,
          measureFn: (ChartData value, _) => value.value,
          data: chartDataGridUnit,
          labelAccessorFn: (ChartData value, _) => '${value.value.toString()}',
        ),
        charts.Series<ChartData, DateTime>(
            id: 'DG kWh',
            colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
            domainFn: (ChartData date, _) => date.date,
            measureFn: (ChartData value, _) => value.value,
            data: chartDataDgUnit,
            labelAccessorFn: (ChartData value, _) =>
                '${value.value.toString()}'),
      ];
    } else {
      return [
        charts.Series<ChartData, DateTime>(
            id: 'Grid INR',
            colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
            domainFn: (ChartData date, _) => date.date,
            measureFn: (ChartData value, _) => value.value,
            data: chartDataGridAmt,
            labelAccessorFn: (ChartData value, _) =>
                '${value.value.toString()}'),
        charts.Series<ChartData, DateTime>(
            id: 'DG INR',
            colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
            domainFn: (ChartData date, _) => date.date,
            measureFn: (ChartData value, _) => value.value,
            data: chartDataDgAmt,
            labelAccessorFn: (ChartData value, _) =>
                '${value.value.toString()}'),
      ];
    }
  }

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
                      month = pickedDate.month;
                      year = pickedDate.year;
                    });
                    initDailyChart(year, month);
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
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16.0),
          ),
          centerTitle: true,
        ),
        body: BaseView<DailyReportViewModel>(builder: (context, value, child) {
          if (dailyReportResponse != null) {
            return Stack(children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
                child: SizedBox(
                  height: double.infinity,
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        if (dailyReportResponse.resource.dg.dg_unit.length !=
                            0) {
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
                                padding:
                                    const EdgeInsets.only(top: 16.0, bottom: 0),
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
                                      defaultRenderer:
                                          charts.LineRendererConfig(
                                        includePoints: true,
                                        includeArea: true,
                                        stacked: true,
                                        includeLine: true,
                                      ),
                                      behaviors: [
                                        charts.SlidingViewport(),
                                        charts.PanAndZoomBehavior(),
                                        charts.LinePointHighlighter(
                                            showHorizontalFollowLine: charts
                                                .LinePointHighlighterFollowLineType
                                                .all,
                                            showVerticalFollowLine: charts
                                                .LinePointHighlighterFollowLineType
                                                .nearest),
                                        charts.SelectNearest(
                                            eventTrigger: charts
                                                .SelectionTrigger.tapAndDrag),
                                        charts.SeriesLegend(
                                          position:
                                              charts.BehaviorPosition.bottom,
                                          desiredMaxRows: 2,
                                          horizontalFirst: false,
                                          cellPadding: new EdgeInsets.only(
                                              right: 4.0,
                                              bottom: 4.0,
                                              left: 96.0,
                                              top: 4.0),
                                          showMeasures: true,
                                          outsideJustification: charts
                                              .OutsideJustification
                                              .middleDrawArea,
                                          measureFormatter: (num value) {
                                            return value == null
                                                ? '-'
                                                : '$value';
                                          },
                                        ),
                                      ],
                                      domainAxis: new charts.DateTimeAxisSpec(
                                          showAxisLine: true,
                                          tickFormatterSpec: new charts
                                                  .AutoDateTimeTickFormatterSpec(
                                              day: new charts.TimeFormatterSpec(
                                            format: 'dd MMM',
                                            transitionFormat: 'dd MMM',
                                          ))),
                                    )),
                              ),
                            ),
                          );
                        } else
                          return Container(
                            child: Center(child: Text('Loading..')),
                          );
                      }),
                ),
              ),
              Positioned(
                  top: 25.0, right: 25.0, child: datePickerDaily(context)),
            ]);
          } else
            return Container(
              child: Center(child: Text('Loading..')),
            );
        }));
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
  final double value;

  ChartData(this.date, this.value);
}
