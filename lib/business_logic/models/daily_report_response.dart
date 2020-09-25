import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'daily_report_resource.dart';

part 'daily_report_response.g.dart';

@JsonSerializable()
abstract class DailyReportResponse
    implements Built<DailyReportResponse, DailyReportResponseBuilder> {
  int get rc;
  String get message;
  DailyReportResource get resource;

  DailyReportResponse._();

  factory DailyReportResponse([updates(DailyReportResponseBuilder b)]) =
      _$DailyReportResponse;

  static Serializer<DailyReportResponse> get serializer =>
      _$dailyReportResponseSerializer;
}
