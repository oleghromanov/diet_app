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

import '../../domain/dto/recipe.dart' as _i9;
import '../../domain/models/user_model.dart' as _i8;
import '../../presentation/screens/auth/auth_screen.dart' as _i1;
import '../../presentation/screens/home/home_screen.dart' as _i5;
import '../../presentation/screens/navigation/navigation_screen.dart' as _i4;
import '../../presentation/screens/recipe/recipe_screen.dart' as _i3;
import '../../presentation/screens/registration/registration_screen.dart'
    as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: const _i1.AuthScreen()),
      );
    },
    RegistrationRouter.name: (routeData) {
      final args = routeData.argsAs<RegistrationRouterArgs>(
          orElse: () => const RegistrationRouterArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(
            child: _i2.RegistrationScreen(
          user: args.user,
          key: args.key,
        )),
      );
    },
    RecipeRouter.name: (routeData) {
      final args = routeData.argsAs<RecipeRouterArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(
            child: _i3.RecipeScreen(
          recipe: args.recipe,
          key: args.key,
        )),
      );
    },
    NavigationRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: const _i4.NavigationScreen()),
      );
    },
    HomeRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: const _i5.HomeScreen()),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          AuthRouter.name,
          path: '/',
        ),
        _i6.RouteConfig(
          RegistrationRouter.name,
          path: 'registration',
        ),
        _i6.RouteConfig(
          RecipeRouter.name,
          path: 'recipe',
        ),
        _i6.RouteConfig(
          NavigationRouter.name,
          path: '/navigation-screen',
          children: [
            _i6.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: NavigationRouter.name,
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRouter extends _i6.PageRouteInfo<void> {
  const AuthRouter()
      : super(
          AuthRouter.name,
          path: '/',
        );

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i2.RegistrationScreen]
class RegistrationRouter extends _i6.PageRouteInfo<RegistrationRouterArgs> {
  RegistrationRouter({
    _i8.UserModel? user,
    _i7.Key? key,
  }) : super(
          RegistrationRouter.name,
          path: 'registration',
          args: RegistrationRouterArgs(
            user: user,
            key: key,
          ),
        );

  static const String name = 'RegistrationRouter';
}

class RegistrationRouterArgs {
  const RegistrationRouterArgs({
    this.user,
    this.key,
  });

  final _i8.UserModel? user;

  final _i7.Key? key;

  @override
  String toString() {
    return 'RegistrationRouterArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i3.RecipeScreen]
class RecipeRouter extends _i6.PageRouteInfo<RecipeRouterArgs> {
  RecipeRouter({
    required _i9.Recipe recipe,
    _i7.Key? key,
  }) : super(
          RecipeRouter.name,
          path: 'recipe',
          args: RecipeRouterArgs(
            recipe: recipe,
            key: key,
          ),
        );

  static const String name = 'RecipeRouter';
}

class RecipeRouterArgs {
  const RecipeRouterArgs({
    required this.recipe,
    this.key,
  });

  final _i9.Recipe recipe;

  final _i7.Key? key;

  @override
  String toString() {
    return 'RecipeRouterArgs{recipe: $recipe, key: $key}';
  }
}

/// generated route for
/// [_i4.NavigationScreen]
class NavigationRouter extends _i6.PageRouteInfo<void> {
  const NavigationRouter({List<_i6.PageRouteInfo>? children})
      : super(
          NavigationRouter.name,
          path: '/navigation-screen',
          initialChildren: children,
        );

  static const String name = 'NavigationRouter';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: 'home',
        );

  static const String name = 'HomeRouter';
}
