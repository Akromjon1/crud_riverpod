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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../pages/initial/no_connection_page.dart' as _i2;
import '../pages/main/create/create_page.dart' as _i4;
import '../pages/main/main_page.dart' as _i3;
import '../pages/main/update/update_page.dart' as _i5;
import '../pages/pages.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    NoConnectionRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.NoConnectionPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    CreateRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CreatePage(),
      );
    },
    UpdateRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateRouteArgs>();
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i5.UpdatePage(
          key: args.key,
          name: args.name,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          NoConnectionRoute.name,
          path: '/no-connection',
        ),
        _i6.RouteConfig(
          MainRoute.name,
          path: '/main',
        ),
        _i6.RouteConfig(
          CreateRoute.name,
          path: '/create',
        ),
        _i6.RouteConfig(
          UpdateRoute.name,
          path: '/update',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.NoConnectionPage]
class NoConnectionRoute extends _i6.PageRouteInfo<void> {
  const NoConnectionRoute()
      : super(
          NoConnectionRoute.name,
          path: '/no-connection',
        );

  static const String name = 'NoConnectionRoute';
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/main',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i4.CreatePage]
class CreateRoute extends _i6.PageRouteInfo<void> {
  const CreateRoute()
      : super(
          CreateRoute.name,
          path: '/create',
        );

  static const String name = 'CreateRoute';
}

/// generated route for
/// [_i5.UpdatePage]
class UpdateRoute extends _i6.PageRouteInfo<UpdateRouteArgs> {
  UpdateRoute({
    _i7.Key? key,
    required String name,
    required String id,
  }) : super(
          UpdateRoute.name,
          path: '/update',
          args: UpdateRouteArgs(
            key: key,
            name: name,
            id: id,
          ),
        );

  static const String name = 'UpdateRoute';
}

class UpdateRouteArgs {
  const UpdateRouteArgs({
    this.key,
    required this.name,
    required this.id,
  });

  final _i7.Key? key;

  final String name;

  final String id;

  @override
  String toString() {
    return 'UpdateRouteArgs{key: $key, name: $name, id: $id}';
  }
}
