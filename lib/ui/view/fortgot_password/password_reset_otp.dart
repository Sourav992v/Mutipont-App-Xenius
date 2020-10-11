import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PasswordResetOtp extends StatefulWidget {
  static const String id = 'password_reset_otp';

  @override
  _PasswordResetOtpState createState() => _PasswordResetOtpState();
}

class _PasswordResetOtpState extends State<PasswordResetOtp> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = '';
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Align(
            alignment: Alignment.topCenter,
            child: ListView(
              physics: MediaQuery.of(context).viewInsets == EdgeInsets.zero
                  ? NeverScrollableScrollPhysics()
                  : null,
              padding: EdgeInsets.all(32.0),
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 48.0),
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/images/ic_otp_verification.png'),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Your OTP has been\nsent on XXXXXXXX72',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Form(
                  key: formKey,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 30),
                      child: PinCodeTextField(
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          length: 6,
                          obscureText: false,
                          obscuringCharacter: '*',
                          animationType: AnimationType.fade,
                          validator: (v) {
                            if (v.length < 3) {
                              return "I'm from validator";
                            } else {
                              return null;
                            }
                          },
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 60.0,
                            fieldWidth: 50.0,
                            activeFillColor:
                                hasError ? kColorAccentRed : Colors.white,
                          ),
                          cursorColor: Colors.black,
                          animationDuration: Duration(milliseconds: 300),
                          textStyle: TextStyle(fontSize: 20.0, height: 1.6),
                          backgroundColor: Colors.blue.shade50,
                          enableActiveFill: true,
                          errorAnimationController: errorController,
                          controller: textEditingController,
                          keyboardType: TextInputType.number,
                          boxShadows: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.black12,
                              blurRadius: 10,
                            )
                          ],
                          onCompleted: (v) {
                            print('Completed');
                          },
                          onChanged: (value) {
                            setState(() {
                              currentText = value;
                            });
                          })),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Didn't receive the code? ",
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                      children: [
                        TextSpan(
                            text: " RESEND",
                            recognizer: onTapRecognizer,
                            style: TextStyle(
                                color: Color(0xFF91D3B3),
                                fontWeight: FontWeight.bold,
                                fontSize: 16))
                      ]),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                RaisedButton.icon(
                    padding: EdgeInsets.all(16.0),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    textColor: Colors.white,
                    color: kColorPrimary,
                    highlightElevation: 16.0,
                    icon: Icon(Icons.navigate_next),
                    label: Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
