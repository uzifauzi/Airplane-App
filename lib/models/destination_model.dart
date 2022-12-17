import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';

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
        nameplace: json['nameplace'] ?? '',
        country: json['country'] ?? '',
        imageUrl: json['imageUrl'] ?? '',
        rating: json['rating'].toDouble() ?? '',
        price: json['price'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nameplace': nameplace,
        'country': country,
        'imageUrl': imageUrl,
        'rating': rating,
        'price': price
      };
  @override
  List<Object?> get props => [id, nameplace, country, imageUrl, rating, price];
}
