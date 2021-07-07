
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_day2/screens/login_screen/login_screen.dart';
import 'package:flutter_ui_day2/screens/splash_screen/splash_screen.dart';



final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  

};
