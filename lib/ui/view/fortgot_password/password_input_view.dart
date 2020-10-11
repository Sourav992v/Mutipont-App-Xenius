import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/ui/view/fortgot_password/password_reset_otp.dart';

class PasswordInput extends StatelessWidget {
  static const String id = 'password_input';
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
                    child: Image.asset(
                        'assets/images/ic_reset_password_details.png'),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Enter your login id and registred phone number.\n We will send youOTP to reset your password',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    prefixIcon: Icon(
                      Icons.person,
                      color: kTextColor,
                    ),
                    hintText: 'Login Id',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kColorPrimaryDark),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    prefixIcon: Icon(Icons.phone_android),
                    hintText: 'Registered Number',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kColorPrimaryDark),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
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
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(PasswordResetOtp.id);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
