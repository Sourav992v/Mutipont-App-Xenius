import 'package:json_annotation/json_annotation.dart';

part 'grid.g.dart';

@JsonSerializable()
class Grid {
  @JsonKey(name: 'date')
  String date;

  @JsonKey(name: 'grid_unit')
  String gridUnit;

  @JsonKey(name: 'grid_amt')
  double gridAmt;

  Grid({this.date, this.gridUnit, this.gridAmt});

  factory Grid.fromJson(Map<String, dynamic> json) => _$GridFromJson(json);

  Map<String, dynamic> toJson() => _$GridToJson(this);
}
