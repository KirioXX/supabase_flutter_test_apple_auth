import 'package:auto_route/annotations.dart';
import 'package:test_apple_auth/src/pages/home/home_page.dart';
import 'package:test_apple_auth/src/pages/login/login_page.dart';
import 'package:test_apple_auth/src/pages/splash/splash_page.dart';
import 'package:test_apple_auth/src/routes/auth_guard.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    // Auth
    AutoRoute(page: LoginPage),
    // Home
    AutoRoute(page: HomePage, guards: [AuthGuard]),
  ],
)
class $AppRouter {}
