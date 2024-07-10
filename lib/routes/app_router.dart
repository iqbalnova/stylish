import 'package:flutter/material.dart';
import 'package:stylish/feature/auth/presentation/screens/forgot_password_screen.dart';
import 'package:stylish/feature/auth/presentation/screens/login_screen.dart';
import 'package:stylish/feature/auth/presentation/screens/register_screen.dart';
import 'package:stylish/feature/core/presentation/screens/get_started.dart';
import 'package:stylish/feature/core/presentation/screens/main_screen.dart';
import 'package:stylish/feature/core/presentation/screens/onboarding.dart';
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
            case AppRoutes.register:
              return const RegisterScreen();
            case AppRoutes.onboarding:
              return const Onboarding();
            case AppRoutes.getStarted:
              return const GetStartedScreen();
            case AppRoutes.forgotPassword:
              return const ForgotPasswordScreen();
            case AppRoutes.main:
              return const MainScreen();
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
