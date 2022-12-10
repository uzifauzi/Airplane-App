import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  // key yang dibutuhakn
  final String id;
  final String nameplace;
  final String country;
  final String imageUrl;
  final double rating;
  final int price;

  DestinationModel({
    required this.id,
    this.nameplace = '',
    this.country = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        nameplace: json['name'],
        country: json['country'],
        imageUrl: json['imageUrl'],
        rating: json['rating'],
        price: json['price'],
      );
  @override
  List<Object?> get props => [id, nameplace, country, imageUrl, rating, price];
}
