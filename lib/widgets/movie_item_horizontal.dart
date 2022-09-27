import 'package:flutter/material.dart';
import 'package:moviez/models/movie_model.dart';
import 'package:moviez/theme.dart';

class MovieItemHorizontal extends StatelessWidget {
  final Movie movie;

  const MovieItemHorizontal(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              movie.image,
              height: 125,
              width: 100,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: b20,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                movie.genre,
                style: r16,
              ),
              const SizedBox(
                height: 20,
              ),
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
        ],
      ),
    );
  }
}
