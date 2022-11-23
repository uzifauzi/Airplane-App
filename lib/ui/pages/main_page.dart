import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            CustomBottomNavigation(),
          ],
        ),
      ),
    );
  }
}

//bottom navigation bar
Widget CustomBottomNavigation() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: 30.0,
      ),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(
          18.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: 'assets/icon_home.png',
            color: kPrimaryColor,
          ),
          IconButton(
            icon: 'assets/icon_transaction.png',
            color: transparentColor,
          ),
          IconButton(
            icon: 'assets/icon_card.png',
            color: transparentColor,
          ),
          IconButton(
            icon: 'assets/icon_setting.png',
            color: transparentColor,
          ),
        ],
      ),
    ),
  );
}

class IconButton extends StatelessWidget {
  final String icon;
  final Color color;
  const IconButton({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 24.0,
          width: 24.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(icon),
          )),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              18.0,
            ),
          ),
        )
      ],
    );
  }
}
