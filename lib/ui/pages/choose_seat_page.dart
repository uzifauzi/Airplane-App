import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Text(
          'Select Your\nFavourite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: Row(
            children: [
              // ini available
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(
                  right: 6,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_available.png'))),
              ),
              Text(
                'Available',
                style: blackTextStyle,
              ),
              // ini available
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(
                  left: 10,
                  right: 6,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_selected.png'))),
              ),
              Text(
                'Selected',
                style: blackTextStyle,
              ),
              // ini unavailable
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(
                  left: 10,
                  right: 6,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_unavailable.png'))),
              ),
              Text(
                'Unavailable',
                style: blackTextStyle,
              ),
            ],
          ));
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            18,
          ),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            // SEAT INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // INI SEAT
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: kunavailableColor,
                        borderRadius: BorderRadius.circular(
                          15,
                        )),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: kunavailableColor,
                        borderRadius: BorderRadius.circular(
                          15,
                        )),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '1',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: kunavailableColor,
                        borderRadius: BorderRadius.circular(
                          15,
                        )),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: kunavailableColor,
                        borderRadius: BorderRadius.circular(
                          15,
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            seatStatus(),
            selectSeat(),
          ],
        ),
      ),
    );
  }
}
