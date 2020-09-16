import 'package:json_annotation/json_annotation.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';

part 'login_resource.g.dart';

@JsonSerializable()
class LoginResource {
  int rc;
  String message;
  String application;

  @JsonKey(name: 'app_base_url')
  String appBaseUrl;

  Resource resource;

  LoginResource(
      {this.rc,
      this.message,
      this.application,
      this.appBaseUrl,
      this.resource});

  factory LoginResource.fromJson(Map<String, dynamic> json) =>
      _$LoginResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResourceToJson(this);
}
