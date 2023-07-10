import 'package:flutter/material.dart';

import 'package:movies/features/home/presentation/screens/widgets/section_cast_item.dart';
import 'package:movies/features/home/presentation/screens/widgets/section_review_item.dart';
import 'package:movies/features/home/presentation/screens/widgets/section_similar_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SectionCastItem(),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                const ScetionReviewItem(),
                SizedBox(height: MediaQuery.of(context).size.height / 80),
                const SectionSimilarItem(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey.withOpacity(.90),
            selectedItemColor: Colors.red,
            //  backgroundColor: const Color.fromARGB(255, 64, 61, 68),
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie,
                ),
                label: 'movies',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.tv,
                ),
                label: 'show',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                ),
                label: 'watchlist',
              ),
            ]),
      ),
    );
  }
}


/*
 Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (double value) {},
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Rating',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
 */
