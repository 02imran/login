import 'package:flutter/material.dart';
import 'package:flutter_ui_day2/constants.dart';
import 'package:flutter_ui_day2/helpers/size_config/size_config.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int selectedIndex = 0;
  List<Map<String, String>> splashData = [
    {
      'image': 'assets/images/splash1.png',
    },
    {
      'image': 'assets/images/splash1.png',
    },
    {
      'image': 'assets/images/splash1.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContant(
                  image: splashData[index]['image'],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                splashData.length,
                (index) => buildDot(index),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      height: 8,
      width: index == selectedIndex ? 20 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: index == selectedIndex
            ? kPrimaryColor
            : kPrimaryColor.withOpacity(0.2),
      ),
    );
  }
}

class SplashContant extends StatelessWidget {
  const SplashContant({
    Key key,
    @required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: getProportionateScreenHeight(500),
          width: getProportionateScreenWidth(500),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
      ],
    );
  }
}
