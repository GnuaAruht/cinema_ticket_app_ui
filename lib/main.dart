import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/colors.dart';
import 'config/navigator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinema Ticket App Ui',
      theme: ThemeData(
          primaryColor: primarColor,
          backgroundColor: backgroundColor,
          scaffoldBackgroundColor: backgroundColor),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
