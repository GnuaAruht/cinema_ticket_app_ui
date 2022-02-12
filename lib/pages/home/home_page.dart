import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../config/colors.dart';
import '../../data/model/movie_model.dart';
import '../../data/sample_data.dart';
import '../../widgets/play_button.dart';
import '../detail/movie_detail_page.dart';

part 'movie_list_widget.dart';
part 'trailer_list_widget.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          leading: const Icon(Icons.menu),
          elevation: 0.0,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.bell_fill)),
            const SizedBox(
              width: 8.0,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('images/profile.jpeg'),
              radius: 18.0,
            ),
            const SizedBox(
              width: 8.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              TrailerListWidget(
                size: size,
                trailerUrls: trailerUrls,
              ),
              MovieListWidget(
                size: size,
                title: 'Now in Cinemas',
                onViewAll: () {},
                movies: inCinemaMovies,
              ),
              MovieListWidget(
                size: size,
                title: 'Coming soon',
                onViewAll: () {},
                movies: comingSoonMovies,
              ),
            ],
          ),
        ));
  }
}
