import 'package:flutter/material.dart';
import 'package:flutter_ui_day2/helpers/size_config/size_config.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, @required this.text,@required this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(50),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: press,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        color: kButtonColor,
      ),
    );
  }
}
