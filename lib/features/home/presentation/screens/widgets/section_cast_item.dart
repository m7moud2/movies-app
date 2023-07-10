import 'package:flutter/material.dart';

import 'cast_list_view.dart';

class SectionCastItem extends StatelessWidget {
  const SectionCastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 10),
        Text(
          'Cast',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        CastListView(
          urlImage: 'assets/jason.jpg',
          description: 'Jason Statham',
        ),
      ],
    );
  }
}
