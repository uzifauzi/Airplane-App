import 'package:airplane_app/ui/pages/home_page.dart';
import 'package:airplane_app/ui/widgets/custom_navigation_item.dart';
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
            BuildContent(),
            CustomBottomNavigation(),
          ],
        ),
      ),
    );
  }
}

Widget BuildContent() {
  return HomePage();
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
          CustomNavigationItem(
            icon: 'assets/icon_home.png',
            isSelected: true,
          ),
          CustomNavigationItem(
            icon: 'assets/icon_transaction.png',
          ),
          CustomNavigationItem(
            icon: 'assets/icon_card.png',
          ),
          CustomNavigationItem(
            icon: 'assets/icon_setting.png',
          ),
        ],
      ),
    ),
  );
}
