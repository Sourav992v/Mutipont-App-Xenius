import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multipoint_app_xenius/ui/view/home/home.dart';
import 'package:multipoint_app_xenius/ui/view/login/login_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case 'home':
        return MaterialPageRoute(builder: (_) => Home());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route found for ${settings.name}'),
            ),
          );
        });
    }
  }
}
