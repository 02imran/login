

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_day2/helpers/size_config/size_config.dart';

class SocialCardComplete extends StatelessWidget {
  const SocialCardComplete({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          image: 'assets/icons/facebook-2.svg',
          press: () {},
        ),
        SocialCard(
          image: 'assets/icons/google-icon.svg',
          press: () {},
        ),
        SocialCard(
          image: 'assets/icons/twitter.svg',
          press: () {},
        ),
      ],
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    @required this.image,
    @required this.press,
  }) : super(key: key);
  final String image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(10),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
