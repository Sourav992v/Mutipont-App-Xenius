import 'package:chopper/chopper.dart';
import 'package:multipoint_app_xenius/business_logic/enum/viewstate.dart';

import 'package:multipoint_app_xenius/business_logic/models/daily_report_response.dart';
import 'package:multipoint_app_xenius/business_logic/services/authentication_service.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/base_viewmodel.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DailyReportViewModel extends BaseViewModel {
  AuthenticationService _service = locator<AuthenticationService>();

  Future<Response<DailyReportResponse>> getDailyReportResource(
      int year, int month) async {
    SharedPreferences userPref = await SharedPreferences.getInstance();
    String loginId = userPref.getString('login_id');
    String password = userPref.getString('password');
    setState(ViewState.Busy);
    var dailyReportResponse =
        await _service.getDailyReport(loginId, password, year, month);
    setState(ViewState.Idle);
    return dailyReportResponse;
  }
}
