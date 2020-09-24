import 'package:chopper/chopper.dart';
import 'package:multipoint_app_xenius/business_logic/enum/viewstate.dart';

import 'package:multipoint_app_xenius/business_logic/models/daily_report_response.dart';
import 'package:multipoint_app_xenius/business_logic/services/authentication_service.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/base_viewmodel.dart';
import 'package:multipoint_app_xenius/locator.dart';

class DailyReportViewModel extends BaseViewModel {
  AuthenticationService _service = locator<AuthenticationService>();

  Future<Response<DailyReportResponse>> getDailyReportResource(
      int year, int month) async {
    setState(ViewState.Busy);
    var dailyReportResponse = await _service.getDailyReport(year, month);
    setState(ViewState.Idle);
    return dailyReportResponse;
  }
}
