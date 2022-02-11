import 'package:flutter/material.dart';

import '../config/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AppButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: primarColor,
            onPrimary: Colors.black,
            padding:
                const EdgeInsets.symmetric(horizontal: 60.0, vertical: 16.0)),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),
        ));
  }
}
