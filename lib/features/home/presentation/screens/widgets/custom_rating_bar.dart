import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      itemSize: 20,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (double value) {},
    );
  }
}
