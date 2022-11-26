import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  const CustomButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 55,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          )),
    );
  }
}
