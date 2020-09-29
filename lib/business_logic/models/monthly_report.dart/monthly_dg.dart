import 'dart:ffi';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'monthly_dg.g.dart';

abstract class MonthlyDG implements Built<MonthlyDG, MonthlyDGBuilder> {
  String get month;

  String get dg_unit;

  double get dg_amt;

  MonthlyDG._();

  factory MonthlyDG([updates(MonthlyDGBuilder b)]) = _$MonthlyDG;

  static Serializer<MonthlyDG> get serializer => _$monthlyDGSerializer;
}
