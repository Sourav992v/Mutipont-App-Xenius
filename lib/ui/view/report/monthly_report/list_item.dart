import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/business_logic/models/daily_report_resource.dart';
import 'package:multipoint_app_xenius/business_logic/models/monthly_report.dart/monthly_report_resource.dart';
import 'package:multipoint_app_xenius/business_logic/models/monthly_report.dart/monthly_report_response.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/ui/view/report/monthly_report/bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildChartTitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final MonthlyReportResponse monthlyReportResponse;
  final int index;
  static final _random = new Random();

  List<charts.Series<MonthlyReport, String>> _seriesList;
  HeadingItem({this.monthlyReportResponse, this.index});

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
          monthlyReportResponse.resource.grid[index].month,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }

  List<charts.Series<Monthly, String>> _createSampleData() {
    final gridUnitColor = charts.ColorUtil.fromDartColor(kChartGridUnit);
    final gridAmountColor = charts.ColorUtil.fromDartColor(kChartGridAmount);
    final dgUnitColor = charts.ColorUtil.fromDartColor(kChartDGUnit);
    final dgAmountColor = charts.ColorUtil.fromDartColor(kChartDGAMount);

    List<Monthly> assessmentData = [];
    for (int i = 0; i < 4; i++) {
      assessmentData.add(new Monthly(
          label: 'Grid kWh',
          value: double.parse(
              monthlyReportResponse.resource.grid[index].grid_unit)));
      assessmentData.add(new Monthly(
          label: 'Grid INR',
          value: monthlyReportResponse.resource.grid[index].grid_amt));
      assessmentData.add(new Monthly(
          label: 'DG kWh',
          value:
              double.parse(monthlyReportResponse.resource.dg[index].dg_unit)));
      assessmentData.add(new Monthly(
          label: 'DG INR',
          value: monthlyReportResponse.resource.dg[index].dg_amt));
    }
    return [
      new charts.Series(
        id: 'Monthly Report',
        data: assessmentData,
        domainFn: (Monthly monthlyReport, _) => monthlyReport.label,
        measureFn: (Monthly monthlyReport, _) => monthlyReport.value,
        labelAccessorFn: (Monthly monthlyReport, _) => '${monthlyReport.value}',
        colorFn: (Monthly assessment, _) {
          switch (assessment.label) {
            case 'Grid kWh':
              {
                return gridUnitColor;
              }

            case 'Grid INR':
              {
                return gridAmountColor;
              }

            case 'DG kWh':
              {
                return dgUnitColor;
              }

            case 'DG INR':
              {
                return dgAmountColor;
              }

            default:
              {
                return dgUnitColor;
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
      barRendererDecorator: new charts.BarLabelDecorator<String>(),

      primaryMeasureAxis: new charts.NumericAxisSpec(
        showAxisLine: true,
        renderSpec: charts.GridlineRendererSpec(
          labelStyle: new charts.TextStyleSpec(
            fontSize: 12,
            color: charts.MaterialPalette.black,
          ),
        ),
      ),

      /// This is an OrdinalAxisSpec to match up with BarChart's default
      /// ordinal domain axis (use NumericAxisSpec or DateTimeAxisSpec for
      /// other charts).
      domainAxis: new charts.OrdinalAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
          labelStyle: new charts.TextStyleSpec(
            fontSize: 12,
            color: charts.MaterialPalette.black,
          ),
        ),
      ),
    );
  }
}
