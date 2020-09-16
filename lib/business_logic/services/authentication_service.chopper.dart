// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AuthenticationService extends AuthenticationService {
  _$AuthenticationService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthenticationService;

  @override
  Future<Response<LoginResource>> getUser() {
    final $url = 'login';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<LoginResource, LoginResource>($request);
  }
}
