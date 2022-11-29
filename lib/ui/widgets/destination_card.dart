import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String nameplace;
  final String country;
  final String imageUrl;
  final double rating;
  const DestinationCard(
      {super.key,
      required this.nameplace,
      required this.country,
      required this.imageUrl,
      this.rating = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  18,
                ),
                image: DecorationImage(
                    image: AssetImage(
                  imageUrl,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(
                        right: 2,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                          'assets/star.png',
                        )),
                      ),
                    ),
                    Text(
                      rating.toString(),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameplace,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  country,
                  style: greyTextStyle.copyWith(fontWeight: light),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
