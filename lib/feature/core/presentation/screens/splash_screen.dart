import 'package:flutter/material.dart';
import 'package:stylish/routes/app_routes.dart';
import 'package:stylish/utils/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLoginStatus();
    super.initState();
  }

  Future<void> checkLoginStatus() async {
    Future.delayed(const Duration(seconds: 3), () {
      // Put logic after login here
      if (1 > 2) {
        Navigator.pushReplacementNamed(context, AppRoutes.main);
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Image.asset(
          Images.splashLogo,
          width: 200, // Atur lebar gambar sesuai kebutuhan Anda
          height: 200, // Atur tinggi gambar sesuai kebutuhan Anda
        ),
      ),
    );
  }
}
