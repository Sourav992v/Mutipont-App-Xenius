import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeaderInterceptor implements RequestInterceptor {
  static const String AUTH_HEADER = "Cache-Control";

  static const String BEARER = "no-cache";

  @override
  FutureOr<Request> onRequest(Request request) async {
    SharedPreferences userPref = await SharedPreferences.getInstance();
    String loginId = userPref.getString('login_id');
    String password = userPref.getString('password');

    Request newRequest = request.copyWith(
        parameters: {"login_id": "$loginId", "password": "$password"});
    return newRequest;
  }
}
