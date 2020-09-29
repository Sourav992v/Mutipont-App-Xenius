import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';

part 'login_resource.g.dart';

abstract class LoginResource
    implements Built<LoginResource, LoginResourceBuilder> {
  @nullable
  int get rc;
  @nullable
  String get message;
  @nullable
  String get application;

  @nullable
  String get app_base_url;

  @nullable
  Resource get resource;

  LoginResource._();

  factory LoginResource([updates(LoginResourceBuilder b)]) = _$LoginResource;

  static Serializer<LoginResource> get serializer => _$loginResourceSerializer;
}
