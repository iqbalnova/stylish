import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:stylish/routes/app_router.dart';

class MyApp extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const MyApp({super.key, required this.navigatorKey});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: !kDebugMode,
          theme: ThemeData(
            useMaterial3: true,
          ),
          navigatorKey: widget.navigatorKey,
          onGenerateRoute: GetIt.instance<AppRouter>().onGenerateRoute,
        );
      },
    );
  }
}
