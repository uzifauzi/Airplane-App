import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;
  const PhotoItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(
            18,
          ),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrl,
              ))),
    );
  }
}
