import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/constants.dart';

import 'package:multipoint_app_xenius/ui/view/login/login_view.dart';

class ChangePassword extends StatelessWidget {
  static const String id = 'change_password_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
        title: Text('Change Password',
            textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
      ),
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
                    child: Image.asset('assets/images/ic_reset_password.png'),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Change Your Password',
                  style: TextStyle(fontSize: 20),
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
                      Icons.lock,
                    ),
                    hintText: 'Password',
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
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Confirm Password',
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
                RaisedButton(
                    padding: EdgeInsets.all(16.0),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    textColor: Colors.white,
                    color: kColorPrimary,
                    highlightElevation: 16.0,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(LoginView.id);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
