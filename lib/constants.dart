import 'package:flutter/material.dart';

import 'helpers/size_config/size_config.dart';

const kPrimaryColor = Color(0xFF9F7052);
const kButtonColor = Color(0xFF15277F);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kMainTextColor = Colors.black;
const kTextStyle =
    TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
const kHeaderStyle =
    TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold);
const kSignInText =
    'Sign In with your email and password or \n continue with social media';
const kSignUpText =
    'Complete your details or  continue \nwith social media';

const kEmailText = 'Enter Your Email';
const kAddressText = 'Enter Your Address';
const kPhoneText = 'Enter Your Phone';
const kNameText = 'Enter Your Name';
const kPasswordText = 'Enter Your Password';

const kAnimationDuration = Duration(milliseconds: 200);

final hadingStyle = TextStyle(
    color: Colors.black,
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputeDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenHeight(20)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: kPrimaryColor));
}
