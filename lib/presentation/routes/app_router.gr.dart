// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/initial/no_connection_page.dart' as _i2;
import '../pages/main/main_page.dart' as _i3;
import '../pages/pages.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    NoConnectionRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.NoConnectionPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          NoConnectionRoute.name,
          path: '/no-connection',
        ),
        _i4.RouteConfig(
          MainRoute.name,
          path: '/main',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.NoConnectionPage]
class NoConnectionRoute extends _i4.PageRouteInfo<void> {
  const NoConnectionRoute()
      : super(
          NoConnectionRoute.name,
          path: '/no-connection',
        );

  static const String name = 'NoConnectionRoute';
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/main',
        );

  static const String name = 'MainRoute';
}
