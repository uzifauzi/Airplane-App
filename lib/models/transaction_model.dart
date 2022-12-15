import 'package:airplane_app/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int mountOfTraveller;
  final String selectedSeats;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel({
    required this.destination,
    this.mountOfTraveller = 0,
    this.selectedSeats = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [
        destination,
        mountOfTraveller,
        selectedSeats,
        insurance,
        refundable,
        vat,
        price,
        grandTotal
      ];
}
