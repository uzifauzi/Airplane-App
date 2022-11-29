import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/destination_card.dart';
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                nameplace: 'Singapore',
                country: 'Singapore',
                imageUrl: 'assets/image_destination1.jpg',
                rating: 4.8,
              ),
              DestinationCard(
                nameplace: 'Penang',
                country: 'Malaysia',
                imageUrl: 'assets/image_destination2.jpg',
                rating: 4.7,
              ),
              DestinationCard(
                nameplace: 'Jakarta',
                country: 'Indonesia',
                imageUrl: 'assets/image_destination3.jpg',
                rating: 4.7,
              ),
              DestinationCard(
                nameplace: 'Grand Place',
                country: 'Thailand',
                imageUrl: 'assets/image_destination4.jpg',
                rating: 4.7,
              ),
            ],
          ),
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
