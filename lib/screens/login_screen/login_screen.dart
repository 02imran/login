import 'package:flutter/material.dart';
import 'package:flutter_ui_day2/helpers/size_config/size_config.dart';
import 'package:flutter_ui_day2/screens/login_screen/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: SignInBody(),
    );
  }
}
