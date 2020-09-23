import 'package:json_annotation/json_annotation.dart';

part 'grid.g.dart';

@JsonSerializable()
class Grid {
  String month;
  String gridUnit;
  double gridAmt;

  Grid({this.month, this.gridUnit, this.gridAmt});

  factory Grid.fromJson(Map<String, dynamic> json) => _$GridFromJson(json);

  Map<String, dynamic> toJson() => _$GridToJson(this);
}
