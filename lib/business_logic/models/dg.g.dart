// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dg _$DgFromJson(Map<String, dynamic> json) {
  return Dg(
    month: json['month'] as String,
    dgUnit: json['dgUnit'] as String,
    dgAmt: (json['dgAmt'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DgToJson(Dg instance) => <String, dynamic>{
      'month': instance.month,
      'dgUnit': instance.dgUnit,
      'dgAmt': instance.dgAmt,
    };
