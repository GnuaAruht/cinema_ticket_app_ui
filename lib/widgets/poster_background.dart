import 'package:flutter/material.dart';

import '../config/colors.dart';

class PosterBackground extends StatelessWidget {
  final Size size;
  const PosterBackground({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.7,
      width: size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/poster1.jpg',
            fit: BoxFit.fitWidth,
          ),
          DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                backgroundColor.withOpacity(0.88),
                Colors.black12,
                backgroundColor.withOpacity(0.88)
              ]))),
          const DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.6, 1.0],
                      colors: [Colors.black12, backgroundColor]))),
        ],
      ),
    );
  }
}
