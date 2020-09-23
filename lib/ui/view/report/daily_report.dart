import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:mp_chart/mp/chart/line_chart.dart';
import 'package:mp_chart/mp/controller/line_chart_controller.dart';
import 'package:mp_chart/mp/core/animator.dart';
import 'package:mp_chart/mp/core/axis/y_axis.dart';
import 'package:mp_chart/mp/core/data/line_data.dart';
import 'package:mp_chart/mp/core/data_interfaces/i_line_data_set.dart';
import 'package:mp_chart/mp/core/description.dart';
import 'package:mp_chart/mp/core/entry/entry.dart';
import 'package:mp_chart/mp/core/enums/legend_horizontal_alignment.dart';
import 'package:mp_chart/mp/core/enums/legend_orientation.dart';
import 'package:mp_chart/mp/core/enums/legend_vertical_alignment.dart';
import 'package:mp_chart/mp/core/enums/limit_label_postion.dart';
import 'package:mp_chart/mp/core/enums/x_axis_position.dart';
import 'package:mp_chart/mp/core/limit_line.dart';
import 'package:mp_chart/mp/core/utils/color_utils.dart';
import 'package:mp_chart/mp/core/value_formatter/default_axis_value_formatter.dart';
import 'package:mp_chart/mp/core/value_formatter/value_formatter.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:mp_chart/mp/core/data_set/line_data_set.dart';

class DailyReportView extends StatefulWidget {
  static const String id = 'daily report';
  @override
  _DailyReportViewState createState() => _DailyReportViewState();
}

class _DailyReportViewState extends State<DailyReportView> {
  List<LineChartController> _lineChartController = List();
  String dateString =
      DateFormat('yyyy-MMM-dd').format(DateTime.now().toLocal());

  var random = Random(1);
  int _count = 20;
  double _range = 100.0;

  List<Color> colors = List()
    ..add(ColorUtils.VORDIPLOM_COLORS[0])
    ..add(ColorUtils.VORDIPLOM_COLORS[1])
    ..add(ColorUtils.VORDIPLOM_COLORS[2]);

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
      body: Stack(children: [
        Container(
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 16.0, right: 16.0),
          child: ListView.builder(
            controller: ScrollController(),
            itemCount: 2,
            physics: PageScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                margin: EdgeInsets.only(
                    top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
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
                  subtitle: _initLineChart(index),
                ),
              );
            },
          ),
        ),
        Positioned(top: 25.0, right: 25.0, child: datePickerDaily(context)),
      ]),
    );
  }

  Widget _initLineChart(int index) {
    _initChartController();
    _initLineData();

    var lineChart = LineChart(_lineChartController[index]);
    _lineChartController[index].animator
      ..reset()
      ..animateY2(1400, Easing.EaseInOutQuad);
    return Container(height: 190, child: lineChart);
  }

  _initLineData() {
    _initChartController();

    for (int i = 0; i < 2; i++) {
      _lineChartController[i].data = _generateLineData();
    }
  }

  _initChartController() {
    _lineChartController.clear();
    var desc = Description()..enabled = false;

    for (int i = 0; i < 2; i++) {
      _lineChartController.add(
        LineChartController(
            axisLeftSettingFunction: (axisLeft, controller) {
              axisLeft
                ..setLabelCount2(5, false)
                ..setAxisMinimum(0);
            },
            axisRightSettingFunction: (axisRight, controller) {
              axisRight
                ..enabled = false
                ..setLabelCount2(5, false)
                ..drawGridLines = (false)
                ..setAxisMinimum(0);
            },
            legendSettingFunction: (legend, controller) {
              legend
                ..verticalAlignment = (LegendVerticalAlignment.BOTTOM)
                ..horizontalAlignment = (LegendHorizontalAlignment.CENTER)
                ..orientation = (LegendOrientation.HORIZONTAL)
                ..drawInside = (false);
            },
            xAxisSettingFunction: (xAxis, controller) {
              xAxis
                ..position = (XAxisPosition.BOTTOM)
                ..drawAxisLine = (true)
                ..drawGridLines = (false)
                ..setGranularity(1.0);
            },
            drawGridBackground: false,
            backgroundColor: ColorUtils.WHITE,
            dragXEnabled: true,
            dragYEnabled: true,
            scaleXEnabled: true,
            scaleYEnabled: true,
            pinchZoomEnabled: false,
            drawBorders: false,
            description: desc),
      );
    }
  }

  LineData _generateLineData() {
    List<Entry> values1 = List();

    for (int i = 0; i < 12; i++) {
      values1.add(Entry(x: i.toDouble(), y: (random.nextDouble() * 65) + 40));
    }

    LineDataSet d1 = LineDataSet(values1, "");
    d1.setLineWidth(2.5);
    d1.setCircleRadius(4.5);
    d1.setHighLightColor(Color.fromARGB(255, 244, 117, 117));
    d1.setDrawValues(false);

    List<Entry> values2 = List();

    for (int i = 0; i < 12; i++) {
      values2.add(Entry(x: i.toDouble(), y: values1[i].y - 30));
    }

    LineDataSet d2 = LineDataSet(values2, "");
    d2.setLineWidth(2.5);
    d2.setCircleRadius(4.5);
    d2.setHighLightColor(Color.fromARGB(255, 244, 117, 117));
    d2.setColor1(ColorUtils.VORDIPLOM_COLORS[0]);
    d2.setCircleColor(ColorUtils.VORDIPLOM_COLORS[0]);
    d2.setDrawValues(false);

    List<ILineDataSet> sets = List();
    sets.add(d1);
    sets.add(d2);

    return LineData.fromList(sets);
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
