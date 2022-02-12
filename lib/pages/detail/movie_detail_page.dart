import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../config/colors.dart';
import '../../data/model/movie_model.dart';
import '../../widgets/app_button.dart';
import '../../widgets/play_button.dart';
import '../../widgets/poster_background.dart';
import '../ticket/ticket_sale_page.dart';

class MovieDetailPage extends StatelessWidget {
  static const String routeName = "/moiveDetail";
  final MovieModel movie;
  const MovieDetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: backgroundColor,
      appBar: _buildAppBar(context),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: PosterBackground(
                size: size,
                posterUrl: movie.posterUrl,
              )),
          Positioned(child: _buildContent(context, movie)),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(CupertinoIcons.back)),
    );
  }

  Padding _buildContent(BuildContext context, MovieModel movie) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 5,
          ),
          const PlayButton(buttonSize: 50),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            movie.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8.0,
          ),
          RatingBar.builder(
              itemCount: 5,
              initialRating: 4.5,
              itemSize: 24.0,
              itemBuilder: (context, index) => const Icon(
                    Icons.star_rate_rounded,
                    color: primarColor,
                  ),
              onRatingUpdate: (_) {}),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            '${movie.year} | ${movie.duration} | ${movie.genres}',
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 28.0,
          ),
          const Text(
            'Overview',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            movie.overview,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                wordSpacing: 1.8),
          ),
          const Spacer(),
          AppButton(
              text: 'Buy ticket',
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(TicketSalePage.routeName, arguments: movie);
              })
        ],
      ),
    );
  }
}
