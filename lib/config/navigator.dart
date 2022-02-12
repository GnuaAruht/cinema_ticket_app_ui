import 'package:flutter/material.dart';

import '../data/model/movie_model.dart';
import '../pages/detail/movie_detail_page.dart';
import '../pages/home/home_page.dart';
import '../pages/ticket/ticket_sale_page.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case MovieDetailPage.routeName:
      return FadeRoute(
          page: MovieDetailPage(movie: settings.arguments as MovieModel));
    case TicketSalePage.routeName:
      return FadeRoute(
          page: TicketSalePage(movie: settings.arguments as MovieModel));
    case HomePage.routeName:
    default:
      return FadeRoute(page: const HomePage());
  }
}

class FadeRoute extends PageRouteBuilder {
  FadeRoute({required this.page})
      : super(
          pageBuilder: (_, __, ___) => page,
          transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );

  final Widget page;
}
