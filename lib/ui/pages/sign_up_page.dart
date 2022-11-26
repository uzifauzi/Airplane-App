import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/custom_text_form_field.dart';
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
        children: [
          Title(),
          InputSection(),
          TacButton(),
        ],
      )),
    );
  }
}

class TacButton extends StatelessWidget {
  const TacButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Condition',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ));
  }
}

class InputSection extends StatelessWidget {
  const InputSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: kWhiteColor,
      ),
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Full Name',
            hintText: 'Your full name',
          ),
          CustomTextFormField(
            label: 'Email Name',
            hintText: 'Your email',
            textInputType: TextInputType.emailAddress,
          ),
          CustomTextFormField(
            label: 'Password',
            hintText: 'Your password',
          ),
          CustomTextFormField(
            label: 'Hobby',
            hintText: 'Your hobby',
          ),
          CustomButton(
              title: 'Get Started',
              width: 220,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/bonus',
                );
              })
        ],
      ),
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
