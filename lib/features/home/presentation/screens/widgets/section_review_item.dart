import 'package:flutter/material.dart';
import 'package:movies/features/home/presentation/screens/widgets/review_list_view.dart';

class ScetionReviewItem extends StatelessWidget {
  const ScetionReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Review',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        ReviewListView(),
      ],
    );
  }
}
