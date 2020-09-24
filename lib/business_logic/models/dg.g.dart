// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dg _$DgFromJson(Map<String, dynamic> json) {
  return Dg(
    date: json['date'] as String,
    dgUnit: json['dg_unit'] as String,
    dgAmt: (json['dg_amt'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DgToJson(Dg instance) => <String, dynamic>{
      'date': instance.date,
      'dg_unit': instance.dgUnit,
      'dg_amt': instance.dgAmt,
    };
