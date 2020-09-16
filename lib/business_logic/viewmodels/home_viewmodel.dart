import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:multipoint_app_xenius/business_logic/enum/viewstate.dart';
import 'package:multipoint_app_xenius/business_logic/models/login_resource.dart';
import 'package:multipoint_app_xenius/business_logic/models/resource.dart';
import 'package:multipoint_app_xenius/business_logic/services/authentication_service.dart';
import 'package:multipoint_app_xenius/locator.dart';

import 'base_viewmodel.dart';

class HomeViewModel extends BaseViewModel {
  AuthenticationService _authService = locator<AuthenticationService>();

  Resource loginResource = Resource();

  Future<Response<LoginResource>> getLoginResource() async {
    setState(ViewState.Busy);
    var resource = await _authService.getUser();
    loginResource = resource.body.resource;
    setState(ViewState.Idle);
    return resource;
  }

  Resource getResource() {
    return loginResource;
  }
}
