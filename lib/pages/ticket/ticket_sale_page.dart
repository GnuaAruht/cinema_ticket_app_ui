import 'dart:ui';

import 'package:cinema_ticket_app/data/movie_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../data/date_model.dart';
import '../../widgets/app_button.dart';
import '../../widgets/poster_background.dart';

part 'date_list.dart';
part 'screen.dart';
part 'seat_layout.dart';
part 'time_list.dart';

final numberOfSeat = [
  [0, 0, 1, 0, 1],
  [0, 0, 0, 1, 0, 1, 0],
  [1, 0, 0, 1, 0, 1, 1, 0],
  [0, 1, 1, 0, 0, 1, 0],
  [0, 1, 0, 0, 0, 1, 0, 0],
  [0, 0, 1, 0, 0]
];

class TicketSalePage extends StatelessWidget {
  final MovieModel movie;
  const TicketSalePage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: backgroundColor,
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
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 14.0, sigmaY: 14.0),
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Colors.black26),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(CupertinoIcons.back)),
              backgroundColor: Colors.transparent,
              title: Text(movie.title),
              elevation: 0.0,
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                SizedBox(
                  height: size.height * 0.14,
                  child: const DateList(),
                ),
                SizedBox(
                  height: size.height * 0.072,
                  child: const TimeListWidget(),
                ),
                ScreenWidget(size: size),
                SizedBox(
                  height: size.height * 0.46,
                  child: const Align(
                    alignment: Alignment.center,
                    child: SeatLayoutWidget(),
                  ),
                ),
                const Spacer(),
                AppButton(text: 'Buty ticket \$400', onPressed: () {}),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
