import 'package:flutter/material.dart';

import 'custom_cast_item.dart';

class CastListView extends StatelessWidget {
  const CastListView({super.key, required this.urlImage, this.description});
  final String urlImage;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemCount: 15,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomCastItem(
            image: urlImage,
            subTitle: description,
          );
        },
      ),
    );
  }
}
