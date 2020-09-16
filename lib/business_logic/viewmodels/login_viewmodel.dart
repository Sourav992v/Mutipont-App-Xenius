import 'package:chopper/chopper.dart';
import 'package:multipoint_app_xenius/business_logic/enum/viewstate.dart';
import 'package:multipoint_app_xenius/business_logic/models/login_resource.dart';
import 'package:multipoint_app_xenius/business_logic/services/authentication_service.dart';
import 'package:multipoint_app_xenius/locator.dart';

import 'base_viewmodel.dart';

class LoginViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  String errorMessage;
  Future<Response<LoginResource>> login() async {
    setState(ViewState.Busy);

    var success = await _authenticationService.getUser();

    setState(ViewState.Idle);
    return success;
  }
}
