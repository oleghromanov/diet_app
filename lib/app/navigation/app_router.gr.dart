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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../presentation/screens/auth/auth_screen.dart' as _i1;
import '../../presentation/screens/registration/registration_screen.dart'
    as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuthScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(child: const _i1.AuthScreen()),
      );
    },
    RegistrationRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(child: const _i2.RegistrationScreen()),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          AuthScreen.name,
          path: '/',
        ),
        _i3.RouteConfig(
          RegistrationRouter.name,
          path: 'registration',
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthScreen extends _i3.PageRouteInfo<void> {
  const AuthScreen()
      : super(
          AuthScreen.name,
          path: '/',
        );

  static const String name = 'AuthScreen';
}

/// generated route for
/// [_i2.RegistrationScreen]
class RegistrationRouter extends _i3.PageRouteInfo<void> {
  const RegistrationRouter()
      : super(
          RegistrationRouter.name,
          path: 'registration',
        );

  static const String name = 'RegistrationRouter';
}
