import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';


import 'monthly_dg.dart';
import 'monthly_grid.dart';


part 'monthly_report_resource.g.dart';

abstract class MonthlyReportResource
    implements Built<MonthlyReportResource, MonthlyReportResourceBuilder> {
  BuiltList<MonthlyGrid> get grid;
  BuiltList<MonthlyDG> get dg;

  MonthlyReportResource._();

  factory MonthlyReportResource([updates(MonthlyReportResourceBuilder b)]) =
      _$MonthlyReportResource;

  static Serializer<MonthlyReportResource> get serializer =>
      _$monthlyReportResourceSerializer;
}
