// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResource _$LoginResourceFromJson(Map<String, dynamic> json) {
  return LoginResource(
    rc: json['rc'] as int,
    message: json['message'] as String,
    application: json['application'] as String,
    appBaseUrl: json['app_base_url'] as String,
    resource: json['resource'] == null
        ? null
        : Resource.fromJson(json['resource'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginResourceToJson(LoginResource instance) =>
    <String, dynamic>{
      'rc': instance.rc,
      'message': instance.message,
      'application': instance.application,
      'app_base_url': instance.appBaseUrl,
      'resource': instance.resource,
    };
