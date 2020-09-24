import 'package:get_it/get_it.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/daily_report_viewmodel.dart';

import 'business_logic/services/authentication_service.dart';
import 'business_logic/viewmodels/home_viewmodel.dart';
import 'business_logic/viewmodels/login_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLoactor() {
  locator.registerLazySingleton(() => AuthenticationService.create());

  locator.registerFactory(() => LoginViewModel());
  locator.registerFactory(() => HomeViewModel());
  locator.registerFactory(() => DailyReportViewModel());
}
