import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/pages/checkout_page.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
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
          margin: const EdgeInsets.only(
            top: 30,
          ),
          child: Row(
            children: [
              // ini available
              Container(
                width: 16,
                height: 16,
                margin: const EdgeInsets.only(
                  right: 6,
                ),
                decoration: const BoxDecoration(
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
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 6,
                ),
                decoration: const BoxDecoration(
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
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 6,
                ),
                decoration: const BoxDecoration(
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
        margin: const EdgeInsets.only(
          top: 30,
        ),
        padding: const EdgeInsets.symmetric(
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

            // INI SEAT 1
            Container(
              margin: const EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    id: 'A1',
                  ),
                  const SeatItem(
                    id: 'B1',
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
                  const SeatItem(
                    id: 'C1',
                  ),
                  const SeatItem(
                    id: 'D1',
                  ),
                ],
              ),
            ),

            // INI SEAT 2
            Container(
              margin: const EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    id: 'A2',
                  ),
                  const SeatItem(
                    id: 'B2',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '2',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )),
                  ),
                  const SeatItem(
                    id: 'C2',
                  ),
                  const SeatItem(
                    id: 'D2',
                  ),
                ],
              ),
            ),

            // INI SEAT 3
            Container(
              margin: const EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    id: 'A3',
                  ),
                  const SeatItem(
                    id: 'B3',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '3',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )),
                  ),
                  const SeatItem(
                    id: 'C3',
                  ),
                  const SeatItem(
                    id: 'D3',
                  ),
                ],
              ),
            ),

            // INI SEAT 4
            Container(
              margin: const EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    id: 'A4',
                  ),
                  const SeatItem(
                    id: 'B4',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '4',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )),
                  ),
                  const SeatItem(
                    id: 'C4',
                  ),
                  const SeatItem(
                    id: 'D4',
                  ),
                ],
              ),
            ),

            // INI SEAT 5
            Container(
              margin: const EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SeatItem(
                    id: 'A5',
                  ),
                  const SeatItem(
                    id: 'B5',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      '5',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )),
                  ),
                  const SeatItem(
                    id: 'C5',
                  ),
                  const SeatItem(
                    id: 'D5',
                  ),
                ],
              ),
            ),

            // NOTE: YOUR SEAT
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),

            // NOTE: TOTAL
            Container(
              margin: const EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'Rp 2.000.000',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 46,
        ),
        child: CustomButton(
          title: 'Continue to checkout',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CheckoutPage()));
          },
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
            checkoutButton(),
          ],
        ),
      ),
    );
  }
}
