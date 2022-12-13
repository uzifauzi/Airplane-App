import 'package:airplane_app/cubit/seat_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  final int status;
  // untuk kode kursi
  final String id;

  const SeatItem({
    super.key,
    required this.status,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kavailableColor;

        case 1:
          return kPrimaryColor;
        case 2:
          return kunavailableColor;
        default:
          return kavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kunavailableColor;
        default:
          return kunavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return Center(
              child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ));
        case 2:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        context.read<SeatCubit>().selectSeat(id);
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: backgroundColor(),
            border: Border.all(
              color: borderColor(),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(
              15,
            )),
        child: child(),
      ),
    );
  }
}
