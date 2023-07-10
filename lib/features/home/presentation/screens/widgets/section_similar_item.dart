import 'package:flutter/material.dart';

import 'cast_list_view.dart';

class SectionSimilarItem extends StatelessWidget {
  const SectionSimilarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 10),
        Text(
          'Similar',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        CastListView(
          urlImage: 'assets/meg.png',
          description: 'The MEG',
        ),
      ],
    );
  }
}
