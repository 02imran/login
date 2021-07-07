import 'package:flutter/material.dart';
import 'package:flutter_ui_day2/helpers/size_config/size_config.dart';
import 'package:flutter_ui_day2/screens/splash_screen/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      // bottomNavigationBar:
      //     BottomNavigationBar(items: <BottomNavigationBarItem>[]),
      body: SplashBody(),
    );
  }
}
