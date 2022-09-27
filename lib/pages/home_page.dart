import 'package:flutter/material.dart';
import 'package:moviez/models/movie_model.dart';
import 'package:moviez/pages/search_result_page.dart';
import 'package:moviez/theme.dart';
import 'package:moviez/widgets/movie_item_horizontal.dart';
import 'package:moviez/widgets/movie_item_vertical.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Moviez',
                        style: b26,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Watch much easier',
                        style: r16,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchResultPage(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.search,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MovieItemVertical(
                    Movie(
                        image: 'assets/images/movie1.png',
                        title: 'John Wick 4',
                        genre: 'Action, Crime',
                        rate: 5),
                  ),
                  MovieItemVertical(
                    Movie(
                        image: 'assets/images/movie2.png',
                        title: 'Bohemian',
                        genre: 'Documentary',
                        rate: 3),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'From Disney',
              style: b26,
            ),
            const SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                MovieItemHorizontal(
                  Movie(
                      image: 'assets/images/movie3.png',
                      title: 'Mulan Session',
                      genre: 'History, War',
                      rate: 3),
                ),
                MovieItemHorizontal(
                  Movie(
                      image: 'assets/images/movie4.png',
                      title: 'Beauty & Beast',
                      genre: 'Sci-Fiction',
                      rate: 5),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
