import 'package:json_annotation/json_annotation.dart';
part 'dg.g.dart';

@JsonSerializable()
class Dg {
  String month;
  String dgUnit;
  double dgAmt;

  Dg({this.month, this.dgUnit, this.dgAmt});

  factory Dg.fromJson(Map<String, dynamic> json) => _$DgFromJson(json);

  Map<String, dynamic> toJson() => _$DgToJson(this);
}
