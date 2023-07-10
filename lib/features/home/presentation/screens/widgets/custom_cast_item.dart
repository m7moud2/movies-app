import 'package:flutter/material.dart';

class CustomCastItem extends StatelessWidget {
  const CustomCastItem({super.key, required this.image, this.subTitle});
  final String image;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset(
              image,
              height: 180.0,
              width: 130.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 3),
        Text(
          subTitle!,
        ),
      ],
    );
  }
}
