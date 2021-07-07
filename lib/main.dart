import 'package:flutter/material.dart';

import 'package:flutter_ui_day2/constants.dart';
import 'package:flutter_ui_day2/routes.dart';
import 'package:flutter_ui_day2/screens/login_screen/login_screen.dart';
import 'package:flutter_ui_day2/screens/splash_screen/splash_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ui',
      theme: ThemeData(
          fontFamily: 'Muli',
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.white.withOpacity(0.1),
            elevation: 0,
            brightness: Brightness.light,
            centerTitle: true,
            iconTheme: IconThemeData(color: kMainTextColor),
            textTheme: TextTheme(
              headline6: TextStyle(color: kMainTextColor),
              bodyText1: TextStyle(color: kMainTextColor),
              bodyText2: TextStyle(color: kTextColor),
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}
