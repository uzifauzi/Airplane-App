import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomButton(
      title: 'Sign Out',
      width: 220,
      onPressed: () {},
    ));
  }
}
