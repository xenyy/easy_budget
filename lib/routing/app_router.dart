import 'package:easy_budget/app/details/details.dart';
import 'package:easy_budget/app/edit/edit.dart';
import 'package:easy_budget/app/home/home.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const home = HomeScreen.routeName;
  static const details = DetailsScreen.routeName;
  static const edit = EditScreen.routeName;
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
        );
      case AppRoutes.details:
        return MaterialPageRoute<dynamic>(
          builder: (_) => DetailsScreen(expense: args),
        );
      case AppRoutes.edit:
        return MaterialPageRoute<dynamic>(
          builder: (_) => EditScreen(expense: args),
        );

      default:
      // TODO: Throw
        return null;
    }
  }
}