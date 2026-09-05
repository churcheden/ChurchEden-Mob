import 'package:church_eden_mob/feature/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:church_eden_mob/core/Container/service_locator.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes().routes,
    );
  }
}
