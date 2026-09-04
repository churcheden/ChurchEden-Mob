import 'package:church_eden_mob/feature/auth/presentation/screens/login_screen.dart';
import 'package:church_eden_mob/feature/routes/routes_const.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  late final GoRouter routes = GoRouter(
    initialLocation: RoutesConstant.loginPage,
    routes: [
      GoRoute(
        path: RoutesConstant.loginPage,
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
}
