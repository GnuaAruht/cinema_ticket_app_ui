import 'dart:ui';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final double buttonSize;
  const PlayButton({Key? key, required this.buttonSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(buttonSize * 0.6),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
        child: CircleAvatar(
          radius: buttonSize * 0.64,
          backgroundColor: Colors.white30,
          child: Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: buttonSize,
          ),
        ),
      ),
    );
  }
}
