// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Grid _$GridFromJson(Map<String, dynamic> json) {
  return Grid(
    month: json['month'] as String,
    gridUnit: json['gridUnit'] as String,
    gridAmt: (json['gridAmt'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$GridToJson(Grid instance) => <String, dynamic>{
      'month': instance.month,
      'gridUnit': instance.gridUnit,
      'gridAmt': instance.gridAmt,
    };
