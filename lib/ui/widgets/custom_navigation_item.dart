import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomNavigationItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  const CustomNavigationItem({
    super.key,
    required this.icon,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(),
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
            color: isSelected ? kPrimaryColor : kWhiteColor,
            borderRadius: BorderRadius.circular(
              18.0,
            ),
          ),
        )
      ],
    );
  }
}
