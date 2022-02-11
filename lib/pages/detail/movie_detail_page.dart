import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../widgets/app_button.dart';
import '../../widgets/play_button.dart';
import '../../widgets/poster_background.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

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
              child: PosterBackground(size: size)),
          Positioned(child: _buildContent()),
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

  Padding _buildContent() {
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
          const Text(
            'House of Gucci',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8.0,
          ),
          // temp for rating bar
          Container(
            height: 18.0,
            width: 100.0,
            color: primarColor,
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            '2019 | 2 h 34 min | Fantasy,Sci-fi',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 28.0,
          ),
          const Text(
            'Storyline',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'The film completes the incredible story of the SkyWalker family,which has been going on for over forty years, and promise to give answer to all the riddle of preivous series.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                wordSpacing: 1.8),
          ),
          const Spacer(),
          AppButton(text: 'Buy ticket', onPressed: () {})
        ],
      ),
    );
  }
}
