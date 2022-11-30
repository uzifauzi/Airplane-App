import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_destination1.jpg',
                ))),
      );
    }

    Widget customShadow() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 236,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0.0),
                Colors.black.withOpacity(0.95),
              ]),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            //NOTE: INI TITLE
            Container(
              margin: EdgeInsets.only(
                top: 286,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Singapore',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Singapore',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          'assets/star.png',
                        ))),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          content(),
        ],
      ),
    );
  }
}
