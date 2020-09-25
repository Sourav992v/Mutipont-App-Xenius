import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:multipoint_app_xenius/business_logic/enum/viewstate.dart';
import 'package:multipoint_app_xenius/business_logic/models/login_resource.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';
import 'package:multipoint_app_xenius/business_logic/services/authentication_service.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'base_viewmodel.dart';

class HomeViewModel extends BaseViewModel {
  AuthenticationService _authService = locator<AuthenticationService>();

  Future<Response<LoginResource>> getLoginResource() async {
    setState(ViewState.Busy);
    SharedPreferences userPref = await SharedPreferences.getInstance();
    String loginId = userPref.getString('login_id');
    String password = userPref.getString('password');
    var resource = await _authService.getUser(loginId, password);

    setState(ViewState.Idle);
    return resource;
  }
}
