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
  Future<Response<LoginResource>> getUser(String login_id, String password) {
    final $url = 'login';
    final $params = <String, dynamic>{
      'login_id': login_id,
      'password': password
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<LoginResource, LoginResource>($request);
  }

  @override
  Future<Response<DailyReportResponse>> getDailyReport(
      String login_id, String password, int year, int month) {
    final $url = 'consumption/daily';
    final $params = <String, dynamic>{
      'login_id': login_id,
      'password': password,
      'year': year,
      'month': month
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<DailyReportResponse, DailyReportResponse>($request);
  }
}
