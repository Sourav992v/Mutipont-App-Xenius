import 'package:chopper/chopper.dart';
import 'package:multipoint_app_xenius/business_logic/enum/viewstate.dart';

import 'package:multipoint_app_xenius/business_logic/models/monthly_report.dart/monthly_report_response.dart';
import 'package:multipoint_app_xenius/business_logic/services/authentication_service.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/base_viewmodel.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MonthlyReportViewModel extends BaseViewModel {
  AuthenticationService _service = locator<AuthenticationService>();

  Future<Response<MonthlyReportResponse>> getMonthlyReportResource(
      int year) async {
    SharedPreferences userPref = await SharedPreferences.getInstance();
    String loginId = userPref.getString('login_id');
    String password = userPref.getString('password');
    setState(ViewState.Busy);
    var monthlyReportResponse =
        await _service.getMonthlyReport(loginId, password, year);
    setState(ViewState.Idle);
    return monthlyReportResponse;
  }
}
