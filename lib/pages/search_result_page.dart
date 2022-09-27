import 'package:flutter/material.dart';
import 'package:moviez/models/movie_model.dart';
import 'package:moviez/theme.dart';
import 'package:moviez/widgets/movie_item_horizontal.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: b1,
        extendedPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 55),
        label: Text(
          'Suggest Movie',
          style: r16white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'cari film disini',
                      hintStyle: r16b1,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 22,
                        color: b1,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'Search Result (3)',
                  style: b20,
                ),
                const SizedBox(
                  height: 20,
                ),
                MovieItemHorizontal(Movie(
                  image: 'assets/images/movie5.png',
                  title: 'The Dark II',
                  genre: 'Horror',
                  rate: 4,
                )),
                MovieItemHorizontal(Movie(
                  image: 'assets/images/movie6.png',
                  title: 'The Dark Knight',
                  genre: 'Heroes',
                  rate: 5,
                )),
                MovieItemHorizontal(Movie(
                  image: 'assets/images/movie7.png',
                  title: 'The Dark Tower',
                  genre: 'Action',
                  rate: 4,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
