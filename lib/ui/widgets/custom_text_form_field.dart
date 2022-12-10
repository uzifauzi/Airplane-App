import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType textInputType;
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: controller,
            keyboardType: textInputType,
            cursorColor: kBlackColor,
            obscureText: obscureText,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    defaultRadius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ))),
          )
        ],
      ),
    );
  }
}
