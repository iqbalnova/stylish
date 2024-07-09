import 'package:flutter/material.dart';
import 'package:stylish/feature/auth/presentation/screens/login_screen.dart';
import 'package:stylish/feature/core/presentation/screens/splash_screen.dart';
import 'package:stylish/routes/app_routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      return Builder(
        builder: (BuildContext context) {
          switch (settings.name) {
            case AppRoutes.splash:
              return const SplashScreen();
            case AppRoutes.login:
              return const LoginScreen();
            default:
              return const Scaffold(
                body: Center(
                  child: Text(
                    'Check Named Routes',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              );
          }
        },
      );
    });
  }
}
