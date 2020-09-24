// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Grid _$GridFromJson(Map<String, dynamic> json) {
  return Grid(
    date: json['date'] as String,
    gridUnit: json['grid_unit'] as String,
    gridAmt: (json['grid_amt'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$GridToJson(Grid instance) => <String, dynamic>{
      'date': instance.date,
      'grid_unit': instance.gridUnit,
      'grid_amt': instance.gridAmt,
    };
