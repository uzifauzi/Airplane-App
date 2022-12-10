import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/cubit/page_cubit.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.error),
          ));
        } else if (state is AuthInitial) {
          context.read<PageCubit>().setPage(0);
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-up', (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const CircularProgressIndicator();
        }
        return CustomButton(
          title: 'Sign Out',
          width: 220,
          onPressed: () {
            context.read<AuthCubit>().signOut();
          },
        );
      },
    ));
  }
}
