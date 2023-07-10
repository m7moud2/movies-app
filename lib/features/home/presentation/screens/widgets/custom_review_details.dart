import 'package:flutter/material.dart';

import 'custom_rating_bar.dart';

class CustomReviewDetails extends StatelessWidget {
  const CustomReviewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * .65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff272B30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/review.jpg'),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 35),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Dr.Ahmed',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Opacity(
                        opacity: .60,
                        child: Text(
                          '@Ahmed_waleed',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 60),
              const Opacity(
                opacity: .60,
                child: Text(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  'I first saw Jaws in 1975 at the tender age of seven; it scared the hell out of me then, and is an exhilarating ride to this day. The Meg, on the other hand, is a formulaic, big-budget B-movie that fails to get the pulse pounding, despite it\'s prehistoric shark being three times as big as Bruce, Spielberg\'s iconic great white.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomRatingBar(),
                  Opacity(
                    opacity: .60,
                    child: Text(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      '2 day',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
