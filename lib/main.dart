import 'package:flutter/material.dart';
import 'package:stylish/app.dart';
import 'package:stylish/config/locator.dart';

final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Locator().setupDepedencyInjection();

  runApp(MyApp(
    navigatorKey: globalKey,
  ));
}
