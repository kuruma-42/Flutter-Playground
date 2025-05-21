import 'package:bloc_clean_coding/config/routes/route_name.dart';
import 'package:flutter/material.dart';

import '../../views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
      case RoutesName.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: settings,
        );
      case RoutesName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder:
              (context) =>
                  Scaffold(body: Center(child: Text('No route generated'))),
          settings: settings,
        );
    }
  }
}
