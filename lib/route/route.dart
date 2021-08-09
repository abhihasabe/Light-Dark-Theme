import 'package:flutter/material.dart';
import 'package:theme/screens/dashboard_screen.dart';
import 'package:theme/screens/splash_screen.dart';

// route names
const String splashPage = 'splash';
const String loginPage = 'login';
const String registerPage = 'register';
const String homePage = 'home';

// controller function to control page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashPage:
      return MaterialPageRoute(builder: (context) => Splash());
    case loginPage:
      return MaterialPageRoute(builder: (context) => Dashboard());
    /*case homePage:
      return MaterialPageRoute(builder: (context) => HomePage());*/
    default:
      throw ('this route name does not exist');
  }
}
