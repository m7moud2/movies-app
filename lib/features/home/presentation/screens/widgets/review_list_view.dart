import 'package:flutter/material.dart';

import 'custom_review_details.dart';

class ReviewListView extends StatelessWidget {
  const ReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4.5,
      child: ListView.builder(
        itemCount: 15,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomReviewDetails();
        },
      ),
    );
    ;
  }
}
