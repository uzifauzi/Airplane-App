import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/theme.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 50.0,
      ),
      child: Text(
        'Sign in with ur \nexisting account',
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
        ],
      ),
    );
  }

  Widget submitButton() {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        } else if (state is AuthFailed) {
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
            title: 'Sign In',
            width: 220,
            onPressed: () {
              context.read<AuthCubit>().signIn(
                    email: emailController.text,
                    password: passwordController.text,
                  );
            });
      },
    );
  }

  Widget tacButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/sign-up');
      },
      child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Dont Have an account? Sign up',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          )),
    );
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
          tacButton(context),
        ],
      )),
    );
  }
}
