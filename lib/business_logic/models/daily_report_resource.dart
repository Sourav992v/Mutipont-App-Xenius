import 'package:json_annotation/json_annotation.dart';

import 'dg.dart';
import 'grid.dart';
part 'daily_report_resource.g.dart';

@JsonSerializable()
class DailyReportResource {
  List<Grid> grid;
  List<Dg> dg;

  DailyReportResource({this.grid, this.dg});

  factory DailyReportResource.fromJson(Map<String, dynamic> json) =>
      _$DailyReportResourceFromJson(json);

  Map<String, dynamic> toJson() => _$DailyReportResourceToJson(this);
}
