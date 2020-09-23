import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/ui/view/report/monthly_report/bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildChartTitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  static final _random = new Random();

  List<charts.Series<MonthlyReport, String>> _seriesList;
  HeadingItem(this.heading);

  @override
  Widget buildChartTitle(BuildContext context) {
    return Container(
      height: 300.0,
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _displayChart(_createSampleData(), true),
            )
          ],
        ),
      ),
    );
  }

  static int _next(int min, int max) => min + _random.nextInt(max - min);

  @override
  Widget buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        heading,
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }

  static List<charts.Series<Monthly, String>> _createSampleData() {
    final assessmentData = [
      new Monthly("A", _next(0, 100)),
      new Monthly("B", _next(0, 100)),
      new Monthly("C", _next(0, 100)),
      new Monthly("D", _next(0, 100)),
      new Monthly("E", _next(0, 100)),
      new Monthly("F", _next(0, 100)),
      new Monthly("G", _next(0, 100)),
      new Monthly("H", _next(0, 100)),
    ];

    return [
      new charts.Series(
        id: 'Monthly Marks',
        data: assessmentData,
        domainFn: (Monthly assessment, _) => assessment.label,
        measureFn: (Monthly assessment, _) => assessment.values,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      )
    ];
  }

  charts.BarChart _displayChart(List<charts.Series> seriesList, bool animate) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      vertical: true,

      primaryMeasureAxis: new charts.NumericAxisSpec(
        showAxisLine: true,
        renderSpec: charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
              fontSize: 10,
              color: charts.MaterialPalette.white,
            ),
            lineStyle: charts.LineStyleSpec(
              color: charts.MaterialPalette.gray.shadeDefault,
            )),
      ),

      /// This is an OrdinalAxisSpec to match up with BarChart's default
      /// ordinal domain axis (use NumericAxisSpec or DateTimeAxisSpec for
      /// other charts).
      domainAxis: new charts.OrdinalAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
              fontSize: 10,
              color: charts.MaterialPalette.white,
            ),
            lineStyle: charts.LineStyleSpec(
              color: charts.MaterialPalette.gray.shadeDefault,
            )),
      ),
    );
  }
}
