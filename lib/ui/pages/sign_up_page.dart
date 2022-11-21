import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [Title()],
      )),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 50.0,
      ),
      child: Text(
        'Join us and get\nyour next journey',
        style: purpleTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
      ),
    );
  }
}
