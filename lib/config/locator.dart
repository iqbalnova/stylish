import 'package:get_it/get_it.dart';
import 'package:stylish/routes/app_router.dart';

class Locator {
  static final getIt = GetIt.instance;

  void setupDepedencyInjection() {
    getIt.registerSingleton<AppRouter>(AppRouter());
  }
}
