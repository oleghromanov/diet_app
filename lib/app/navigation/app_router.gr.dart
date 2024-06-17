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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../domain/dto/recipe.dart' as _i11;
import '../../domain/models/user_model.dart' as _i10;
import '../../presentation/screens/auth/auth_screen.dart' as _i1;
import '../../presentation/screens/favourites/favourites_screen.dart' as _i7;
import '../../presentation/screens/home/home_screen.dart' as _i5;
import '../../presentation/screens/navigation/navigation_screen.dart' as _i4;
import '../../presentation/screens/recipe/recipe_screen.dart' as _i3;
import '../../presentation/screens/registration/registration_screen.dart'
    as _i2;
import '../../presentation/screens/search/search_screen.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i1.AuthScreen()),
      );
    },
    RegistrationRouter.name: (routeData) {
      final args = routeData.argsAs<RegistrationRouterArgs>(
          orElse: () => const RegistrationRouterArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(
            child: _i2.RegistrationScreen(
          user: args.user,
          key: args.key,
        )),
      );
    },
    RecipeRouter.name: (routeData) {
      final args = routeData.argsAs<RecipeRouterArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(
            child: _i3.RecipeScreen(
          recipe: args.recipe,
          isMyRecipe: args.isMyRecipe,
          inFavorite: args.inFavorite,
          key: args.key,
        )),
      );
    },
    NavigationRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i4.NavigationScreen()),
      );
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SearchScreen(),
      );
    },
    FavouritesRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.FavouritesScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          AuthRouter.name,
          path: '/',
        ),
        _i8.RouteConfig(
          RegistrationRouter.name,
          path: 'registration',
        ),
        _i8.RouteConfig(
          RecipeRouter.name,
          path: 'recipe',
        ),
        _i8.RouteConfig(
          NavigationRouter.name,
          path: '/navigation-screen',
          children: [
            _i8.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: NavigationRouter.name,
            ),
            _i8.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: NavigationRouter.name,
            ),
            _i8.RouteConfig(
              FavouritesRouter.name,
              path: 'favourites',
              parent: NavigationRouter.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRouter extends _i8.PageRouteInfo<void> {
  const AuthRouter()
      : super(
          AuthRouter.name,
          path: '/',
        );

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i2.RegistrationScreen]
class RegistrationRouter extends _i8.PageRouteInfo<RegistrationRouterArgs> {
  RegistrationRouter({
    _i10.UserModel? user,
    _i9.Key? key,
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

  final _i10.UserModel? user;

  final _i9.Key? key;

  @override
  String toString() {
    return 'RegistrationRouterArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i3.RecipeScreen]
class RecipeRouter extends _i8.PageRouteInfo<RecipeRouterArgs> {
  RecipeRouter({
    required _i11.Recipe recipe,
    bool isMyRecipe = true,
    bool inFavorite = false,
    _i9.Key? key,
  }) : super(
          RecipeRouter.name,
          path: 'recipe',
          args: RecipeRouterArgs(
            recipe: recipe,
            isMyRecipe: isMyRecipe,
            inFavorite: inFavorite,
            key: key,
          ),
        );

  static const String name = 'RecipeRouter';
}

class RecipeRouterArgs {
  const RecipeRouterArgs({
    required this.recipe,
    this.isMyRecipe = true,
    this.inFavorite = false,
    this.key,
  });

  final _i11.Recipe recipe;

  final bool isMyRecipe;

  final bool inFavorite;

  final _i9.Key? key;

  @override
  String toString() {
    return 'RecipeRouterArgs{recipe: $recipe, isMyRecipe: $isMyRecipe, inFavorite: $inFavorite, key: $key}';
  }
}

/// generated route for
/// [_i4.NavigationScreen]
class NavigationRouter extends _i8.PageRouteInfo<void> {
  const NavigationRouter({List<_i8.PageRouteInfo>? children})
      : super(
          NavigationRouter.name,
          path: '/navigation-screen',
          initialChildren: children,
        );

  static const String name = 'NavigationRouter';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: 'home',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.SearchScreen]
class SearchRouter extends _i8.PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i7.FavouritesScreen]
class FavouritesRouter extends _i8.PageRouteInfo<void> {
  const FavouritesRouter()
      : super(
          FavouritesRouter.name,
          path: 'favourites',
        );

  static const String name = 'FavouritesRouter';
}
