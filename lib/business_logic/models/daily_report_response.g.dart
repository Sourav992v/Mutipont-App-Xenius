// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyReportResponse _$DailyReportResponseFromJson(Map<String, dynamic> json) {
  return DailyReportResponse(
    rc: json['rc'] as int,
    message: json['message'] as String,
    resource: json['resource'] == null
        ? null
        : DailyReportResource.fromJson(
            json['resource'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DailyReportResponseToJson(
        DailyReportResponse instance) =>
    <String, dynamic>{
      'rc': instance.rc,
      'message': instance.message,
      'resource': instance.resource,
    };
