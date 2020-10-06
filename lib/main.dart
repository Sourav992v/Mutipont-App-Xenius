import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';

import 'package:multipoint_app_xenius/ui/view/home/home.dart';
import 'package:multipoint_app_xenius/ui/view/login/login_view.dart';

import 'package:multipoint_app_xenius/ui/view/report/daily_report/daily_report_view.dart';
import 'package:multipoint_app_xenius/ui/view/report/monthly_report/monthly_report_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setupLoactor();
  _setUpLogging();
  runApp(MultipointAppXenius());
}

void _setUpLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MultipointAppXenius extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MultipointAppXeniusState createState() => _MultipointAppXeniusState();
}

class _MultipointAppXeniusState extends State<MultipointAppXenius> {
  String loginId;
  String password;

  @override
  void initState() {
    initPref();
    super.initState();
  }

  void initPref() async {
    SharedPreferences userPref = await SharedPreferences.getInstance();
    setState(() {
      loginId = userPref.getString('login_id');
      password = userPref.getString('password');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kColorPrimary,
        fontFamily: 'Lato',
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: LoginView.id,
      //loginId != null || password != null ? Home.id : LoginView.id,//
      routes: {
        Home.id: (context) => Home(),
        LoginView.id: (context) => LoginView(),
        DailyReportView.id: (context) => DailyReportView(),
        MonthlyReportView.id: (context) => MonthlyReportView(),
      },
    );
  }
}
