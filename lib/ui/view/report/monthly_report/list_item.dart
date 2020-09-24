import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/business_logic/models/daily_report_resource.dart';
import 'package:multipoint_app_xenius/ui/view/report/monthly_report/bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildChartTitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final DailyReportResource dailyReportResource;
  final String heading;
  static final _random = new Random();

  List<charts.Series<MonthlyReport, String>> _seriesList;
  HeadingItem(this.dailyReportResource, this.heading);

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
      child: Center(
        child: Text(
          heading,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }

  static List<charts.Series<Monthly, String>> _createSampleData() {
    final blue = charts.MaterialPalette.blue.makeShades(2);
    final red = charts.MaterialPalette.red.makeShades(2);
    final green = charts.MaterialPalette.green.makeShades(2);

    List<Monthly> assessmentData = [];
    for (int i = 0; i < 4; i++) {
      assessmentData.add(new Monthly('Grid kWh', _next(i, 100)));
      assessmentData.add(new Monthly('Grid INR', _next(i, 100)));
      assessmentData.add(new Monthly('DG kWh', _next(i, 100)));
      assessmentData.add(new Monthly('DG INR', _next(i, 100)));
    }
    return [
      new charts.Series(
        id: 'Monthly Report',
        data: assessmentData,
        domainFn: (Monthly assessment, _) => assessment.label,
        measureFn: (Monthly assessment, _) => assessment.values,
        colorFn: (Monthly assessment, _) {
          switch (assessment.label) {
            case 'Grid kWh':
              {
                return blue[1];
              }

            case 'Grid INR':
              {
                return red[1];
              }

            case 'DG kWh':
              {
                return green[1];
              }

            case 'DG INR':
              {
                return blue[0];
              }

            default:
              {
                return red[0];
              }
          }
        },
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
              color: charts.MaterialPalette.black,
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
              color: charts.MaterialPalette.black,
            ),
            lineStyle: charts.LineStyleSpec(
              color: charts.MaterialPalette.gray.shadeDefault,
            )),
      ),
    );
  }
}
