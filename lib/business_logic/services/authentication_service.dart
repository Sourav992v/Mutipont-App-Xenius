import 'package:multipoint_app_xenius/business_logic/models/daily_report_response.dart';

import 'package:multipoint_app_xenius/business_logic/models/login_resource.dart';

import 'package:chopper/chopper.dart';
import 'package:multipoint_app_xenius/business_logic/models/monthly_report.dart/monthly_report_response.dart';
import 'package:multipoint_app_xenius/business_logic/services/built_value_converter.dart';

import 'interceptor/header_interceptor.dart';

part 'authentication_service.chopper.dart';

@ChopperApi()
abstract class AuthenticationService extends ChopperService {
  static AuthenticationService create() {
    final client = ChopperClient(
      baseUrl: 'http://vapt.myxenius.com/thirdparty/api',
      interceptors: [HttpLoggingInterceptor()],
      converter: BuiltValueConverter(),
      errorConverter: JsonConverter(),
      services: [
        _$AuthenticationService(),
      ],
    );

    return _$AuthenticationService(client);
  }

  @Get(path: 'login')
  Future<Response<LoginResource>> getUser(
      @Query('login_id') String loginId, @Query('password') String password);

  @Get(path: 'consumption/daily')
  Future<Response<DailyReportResponse>> getDailyReport(
    @Query('login_id') String loginId,
    @Query('password') String password,
    @Query('year') int year,
    @Query('month') int month,
  );

  @Get(path: 'consumption/monthly')
  Future<Response<MonthlyReportResponse>> getMonthlyReport(
    @Query('login_id') String loginId,
    @Query('password') String password,
    @Query('year') int year,
  );
}
