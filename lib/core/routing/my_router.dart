import 'package:flutter/material.dart';
import 'package:mvvm_app/core/presentation/home_screen.dart';
import 'package:mvvm_app/core/routing/routes.dart';
import 'package:mvvm_app/features/gold/presentation/screens/gold_screen.dart';
import 'package:mvvm_app/features/silver/presentation/screens/silver_screen.dart';

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
