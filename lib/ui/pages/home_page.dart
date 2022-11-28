import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy, \nNur Fauzi',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profil.jpg',
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsetsDirectional.only(
          top: 30,
        ),
        child: Row(
          children: [
            Container(
              width: 200,
              height: 323,
              padding: EdgeInsets.all(
                10,
              ),
              margin: EdgeInsets.only(
                left: defaultMargin,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  18,
                ),
                color: kWhiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    width: 180,
                    height: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          18,
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                          'assets/image_destination1.jpg',
                        ))),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 55,
                        height: 30,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
      ],
    );
  }
}
