import 'package:airplane_app/cubit/seat_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  // untuk kode kursi
  final String id;
  // untuk cek apakah seat available atau tidak
  final bool isAvailable;

  const SeatItem({
    super.key,
    required this.id,
    this.isAvailable = true,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.read<SeatCubit>().isSelected(id);
    backgroundColor() {
      if (!isAvailable) {
        return kunavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kunavailableColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kunavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
            child: Text(
          'YOU',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ));
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
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
