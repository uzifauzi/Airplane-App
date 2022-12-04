import 'package:airplane_app/cubit/page_cubit.dart';
import 'package:airplane_app/ui/pages/home_page.dart';
import 'package:airplane_app/ui/pages/setting_page.dart';
import 'package:airplane_app/ui/pages/transaction_page.dart';
import 'package:airplane_app/ui/pages/wallet_page.dart';
import 'package:airplane_app/ui/widgets/custom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget BuildContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return TransactionPage();
      case 2:
        return WalletPage();
      case 3:
        return SettingPage();
      default:
        return HomePage();
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
            CustomNavigationItem(
              index: 0,
              icon: 'assets/icon_home.png',
            ),
            CustomNavigationItem(
              index: 1,
              icon: 'assets/icon_transaction.png',
            ),
            CustomNavigationItem(
              index: 2,
              icon: 'assets/icon_card.png',
            ),
            CustomNavigationItem(
              index: 3,
              icon: 'assets/icon_setting.png',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<PageCubit, int>(
        builder: (context, currentIndex) {
          return Scaffold(
            backgroundColor: kBackgroundColor,
            body: Stack(
              children: [
                BuildContent(currentIndex),
                CustomBottomNavigation(),
              ],
            ),
          );
        },
      ),
    );
  }
}
