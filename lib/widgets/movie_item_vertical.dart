import 'package:flutter/material.dart';
import 'package:moviez/models/movie_model.dart';

import 'package:moviez/theme.dart';

class MovieItemVertical extends StatelessWidget {
  // const MovieItem({Key? key}) : super(key: key);
  final Movie movie;
  const MovieItemVertical(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              movie.image,
              height: 200,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: b20,
                    ),
                    Text(
                      movie.genre,
                      style: r16,
                    ),
                  ],
                ),
                //NOTE: Rating
                Row(
                  children: [1, 2, 3, 4, 5].map((index) {
                    return Image.asset(
                      'assets/images/ic_star.png',
                      width: 20,
                      color: index > movie.rate ? Colors.grey : null,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
