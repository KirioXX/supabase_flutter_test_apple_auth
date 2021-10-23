// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/home/home_page.dart' as _i3;
import '../pages/login/login_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i1;
import 'auth_guard.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter(
      {_i5.GlobalKey<_i5.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i6.AuthGuard authGuard;

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.LoginPage(key: args.key, onResult: args.onResult));
    },
    HomePageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashPageRoute.name, path: '/'),
        _i4.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i4.RouteConfig(HomePageRoute.name,
            path: '/home-page', guards: [authGuard])
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i4.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.LoginPage]
class LoginPageRoute extends _i4.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i5.Key? key, dynamic Function(bool)? onResult})
      : super(name,
            path: '/login-page',
            args: LoginPageRouteArgs(key: key, onResult: onResult));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key, this.onResult});

  final _i5.Key? key;

  final dynamic Function(bool)? onResult;
}

/// generated route for [_i3.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}
