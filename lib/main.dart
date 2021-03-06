import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:multipoint_app_xenius/constants.dart';
import 'package:multipoint_app_xenius/locator.dart';
import 'package:multipoint_app_xenius/ui/view/home/home.dart';
import 'package:multipoint_app_xenius/ui/view/login/login_view.dart';

void main() {
  setupLoactor();
  _setUpLogging();
  runApp(MyApp());
}

void _setUpLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
      routes: {
        LoginView.id: (context) => LoginView(),
        Home.id: (context) => Home(),
      },
    );
  }
}
