import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/business_logic/enum/viewstate.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
