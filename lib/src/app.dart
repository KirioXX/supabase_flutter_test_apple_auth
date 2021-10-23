import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_apple_auth/src/routes/auth_guard.dart';
import 'package:test_apple_auth/src/routes/router.gr.dart';

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  final _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Trunk Pilot',
      routerDelegate: AutoRouterDelegate(
        _appRouter,
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
