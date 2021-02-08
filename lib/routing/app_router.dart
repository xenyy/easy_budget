import 'package:easy_budget/app/categories/categories.dart';
import 'package:easy_budget/app/dashboard/dashboard.dart';
import 'package:easy_budget/app/details/details.dart';
import 'package:easy_budget/app/edit/edit.dart';
import 'package:easy_budget/app/home/home.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const home = HomeScreen.routeName;
  static const details = DetailsScreen.routeName;
  static const edit = EditScreen.routeName;
  static const dashboard = DashboardScreen.routeName;
  static const categories = CategoriesScreen.routeName;

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
          builder: (_) => DetailsScreen(expenseItem: args),
        );
      case AppRoutes.edit:
        return MaterialPageRoute<dynamic>(
          builder: (_) => EditScreen(expenseItem: args),
        );
      case AppRoutes.dashboard:
        return MaterialPageRoute<dynamic>(
          builder: (_) => DashboardScreen(),
        );
      case AppRoutes.categories:
        return MaterialPageRoute<dynamic>(
          builder: (_) => CategoriesScreen(),
        );

      default:
      // TODO: Throw
        return null;
    }
  }
}