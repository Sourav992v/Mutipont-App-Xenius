import 'dart:ffi';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'monthly_grid.g.dart';

abstract class MonthlyGrid implements Built<MonthlyGrid, MonthlyGridBuilder> {
  String get month;

  String get grid_unit;

  double get grid_amt;

  MonthlyGrid._();

  factory MonthlyGrid([updates(MonthlyGridBuilder b)]) = _$MonthlyGrid;

  static Serializer<MonthlyGrid> get serializer => _$monthlyGridSerializer;
}
