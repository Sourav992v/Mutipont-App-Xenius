import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dg.dart';
import 'grid.dart';
part 'daily_report_resource.g.dart';

abstract class DailyReportResource
    implements Built<DailyReportResource, DailyReportResourceBuilder> {
  Grid get grid;
  Dg get dg;

  DailyReportResource._();

  factory DailyReportResource([updates(DailyReportResourceBuilder b)]) =
      _$DailyReportResource;

  static Serializer<DailyReportResource> get serializer =>
      _$dailyReportResourceSerializer;
}
