// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_report_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyReportResource _$DailyReportResourceFromJson(Map<String, dynamic> json) {
  return DailyReportResource(
    grid: (json['grid'] as List)
        ?.map(
            (e) => e == null ? null : Grid.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dg: (json['dg'] as List)
        ?.map((e) => e == null ? null : Dg.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DailyReportResourceToJson(
        DailyReportResource instance) =>
    <String, dynamic>{
      'grid': instance.grid,
      'dg': instance.dg,
    };
