import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'grid.g.dart';

@JsonSerializable()
abstract class Grid implements Built<Grid, GridBuilder> {
  BuiltList<int> get date;

  BuiltList<double> get grid_unit;

  BuiltList<double> get grid_amt;

  Grid._();

  factory Grid([updates(GridBuilder b)]) = _$Grid;

  static Serializer<Grid> get serializer => _$gridSerializer;
}
