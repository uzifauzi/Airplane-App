import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

  Widget title() {
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

  Widget inputSection() {
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
            controller: nameController,
            label: 'Full Name',
            hintText: 'Your full name',
          ),
          CustomTextFormField(
            controller: emailController,
            label: 'Email Name',
            hintText: 'Your email',
            textInputType: TextInputType.emailAddress,
          ),
          CustomTextFormField(
            controller: passwordController,
            obscureText: true,
            label: 'Password',
            hintText: 'Your password',
          ),
          CustomTextFormField(
            controller: hobbyController,
            label: 'Hobby',
            hintText: 'Your hobby',
          ),
        ],
      ),
    );
  }

  Widget submitButton() {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/bonus', (route) => false);
        } else if (state is AuthFailed) {
          print(state.error);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.error),
          ));
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return CustomButton(
            title: 'Get Started',
            width: 220,
            onPressed: () {
              context.read<AuthCubit>().signUp(
                    email: emailController.text,
                    password: passwordController.text,
                    name: nameController.text,
                    hobby: hobbyController.text,
                  );
            });
      },
    );
  }

  Widget tacButton() {
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
          title(),
          inputSection(),
          submitButton(),
          tacButton(),
        ],
      )),
    );
  }
}
