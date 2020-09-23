import 'package:json_annotation/json_annotation.dart';

import 'daily_report_resource.dart';

part 'daily_report_response.g.dart';

@JsonSerializable()
class DailyReportResponse {
  int rc;
  String message;
  DailyReportResource resource;

  DailyReportResponse({this.rc, this.message, this.resource});

  factory DailyReportResponse.fromJson(Map<String, dynamic> json) =>
      _$DailyReportResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DailyReportResponseToJson(this);
}
