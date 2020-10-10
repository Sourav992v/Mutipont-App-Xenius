import 'dart:async';

import 'package:connectivity/connectivity.dart';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:multipoint_app_xenius/business_logic/viewmodels/login_viewmodel.dart';
import 'package:multipoint_app_xenius/components/check_box.dart';
import 'package:multipoint_app_xenius/components/rouded_button.dart';
import 'package:multipoint_app_xenius/components/rounded_input_field.dart';
import 'package:multipoint_app_xenius/components/rounded_password_field.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/ui/view/base_view.dart';
import 'package:multipoint_app_xenius/ui/view/home/home.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginHeader extends StatefulWidget {
  final TextEditingController loginIdController;
  final TextEditingController passwordController;
  final String validationMessege;

  const LoginHeader({
    @required this.loginIdController,
    @required this.passwordController,
    this.validationMessege,
  });

  @override
  _LoginHeaderState createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  bool _obscureText = true;

  String _connectivityStatus;
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectionSubscription;

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    super.initState();
    _connectionSubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectionSubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    ConnectivityResult connectivityResult;

    try {
      connectivityResult = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    if (!mounted) {
      Future.value(null);
    }

    return _updateConnectionStatus(connectivityResult);
  }

  void printWrapped(String text) {
    final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  Future<void> _updateConnectionStatus(
      ConnectivityResult connectivityResult) async {
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        setState(() => _connectivityStatus = connectivityResult.toString());
        break;
      case ConnectivityResult.wifi:
        setState(() => _connectivityStatus = connectivityResult.toString());
        break;
      case ConnectivityResult.none:
        setState(() => _connectivityStatus = connectivityResult.toString());
        break;
      default:
        setState(() => _connectivityStatus = connectivityResult.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<LoginViewModel>(
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/login_xenius_background.png"),
                            fit: BoxFit.fill,
                            alignment: Alignment.center),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 32.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: ListView(
                            physics: MediaQuery.of(context).viewInsets ==
                                    EdgeInsets.zero
                                ? NeverScrollableScrollPhysics()
                                : null,
                            padding: const EdgeInsets.all(32.0),
                            shrinkWrap: true,
                            children: [
                              Text(
                                "Smart Energy Management Solution",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    color: kTextColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              RoudedInputField(
                                loginIdController: widget.loginIdController,
                                icon: Icons.person,
                                hintText: "Login Id",
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              RoudedPasswordField(
                                passwordController: widget.passwordController,
                                obscureText: _obscureText,
                              ),
                              CheckBoxCostume(
                                title: 'Show Password',
                                value: !_obscureText,
                                checked: (bool value) {
                                  toggle();
                                },
                              ),
                              RoundedButton(
                                text: 'Sign In',
                                press: () async {
                                  FocusScope.of(context).unfocus();

                                  if (_connectivityStatus ==
                                          "ConnectivityResult.mobile" ||
                                      _connectivityStatus ==
                                          "ConnectivityResult.wifi") {
                                    SharedPreferences userPref =
                                        await SharedPreferences.getInstance();
                                    userPref.setString('login_id',
                                        widget.loginIdController.text);
                                    userPref.setString('password',
                                        widget.passwordController.text);
                                    userPref.setBool('login', true);

                                    var success = await model.login();

                                    if (success.body.rc == 0) {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil(Home.id,
                                              (Route<dynamic> route) => false);
                                    } else {
                                      Scaffold.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                          'Invalid credentials!',
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        backgroundColor: kColorPrimaryDark,
                                      ));
                                    }
                                  } else {
                                    Scaffold.of(context).showSnackBar(SnackBar(
                                      content: Text(
                                        'No Internet!',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      backgroundColor: kColorPrimaryDark,
                                    ));
                                  }
                                },
                                color: kColorAccentRed,
                                textColor: Colors.white,
                              ),
                              Text(
                                "Forgot Password?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    color: kTextColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Powered by Xenia",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.bold,
                                  color: kColorSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
