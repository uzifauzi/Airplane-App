import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              width: 300,
              height: 211,
              padding: EdgeInsetsDirectional.all(defaultMargin),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.5),
                      blurRadius: 50,
                      offset: const Offset(0, 10),
                    ),
                  ],
                  image: const DecorationImage(
                      image: AssetImage(
                    'assets/image_card.png',
                  ))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: whiteTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              state.user.name,
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/icon_plane.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'Pay',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  Text(
                    'Balance',
                    style: whiteTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR ${state.user.balance}',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 80,
        ),
        child: Text(
          'Big Bonus 🎉',
          style: purpleTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
          bottom: 50,
        ),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket.',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
          width: 220,
          title: 'Get Startted',
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          });
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
