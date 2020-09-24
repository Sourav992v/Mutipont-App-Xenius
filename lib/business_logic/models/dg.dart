import 'package:json_annotation/json_annotation.dart';
part 'dg.g.dart';

@JsonSerializable()
class Dg {
  @JsonKey(name: 'date')
  String date;

  @JsonKey(name: 'dg_unit')
  String dgUnit;

  @JsonKey(name: 'dg_amt')
  double dgAmt;

  Dg({this.date, this.dgUnit, this.dgAmt});

  factory Dg.fromJson(Map<String, dynamic> json) => _$DgFromJson(json);

  Map<String, dynamic> toJson() => _$DgToJson(this);
}
