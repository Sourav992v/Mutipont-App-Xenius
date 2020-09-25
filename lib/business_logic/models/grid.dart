import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'grid.g.dart';

@JsonSerializable()
abstract class Grid implements Built<Grid, GridBuilder> {
  String get date;

  String get grid_unit;

  double get grid_amt;

  Grid._();

  factory Grid([updates(GridBuilder b)]) = _$Grid;

  static Serializer<Grid> get serializer => _$gridSerializer;
}
