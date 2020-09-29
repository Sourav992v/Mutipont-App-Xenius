import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'monthly_report_resource.dart';

part 'monthly_report_response.g.dart';

abstract class MonthlyReportResponse
    implements Built<MonthlyReportResponse, MonthlyReportResponseBuilder> {
  int get rc;
  String get message;
  MonthlyReportResource get resource;

  MonthlyReportResponse._();

  factory MonthlyReportResponse([updates(MonthlyReportResponseBuilder b)]) =
      _$MonthlyReportResponse;

  static Serializer<MonthlyReportResponse> get serializer =>
      _$monthlyReportResponseSerializer;
}
