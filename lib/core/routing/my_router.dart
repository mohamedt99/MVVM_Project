import 'package:flutter/material.dart';
import 'package:mvvm_app/core/presentation/gold_screen.dart';
import 'package:mvvm_app/core/presentation/home_screen.dart';
import 'package:mvvm_app/core/presentation/silver_screen.dart';
import 'package:mvvm_app/core/routing/routes.dart';

class MyRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      
      case Routes.goldScreen:
        return MaterialPageRoute(
          builder: (_) => GoldScreen(),
        );
      
      case Routes.silverScreen:
        return MaterialPageRoute(
          builder: (_) => SilverScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Text("no route defined for ${settings.name}"),
        );
    }
  }
}
