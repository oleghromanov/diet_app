import 'package:auto_route/auto_route.dart';
import 'package:diet_app/presentation/screens/auth/auth_screen.dart';
import 'package:diet_app/presentation/screens/home/home_screen.dart';
import 'package:diet_app/presentation/screens/navigation/navigation_screen.dart';
import 'package:diet_app/presentation/screens/recipe/recipe_screen.dart';
import 'package:diet_app/presentation/screens/registration/registration_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AuthScreen,
      name: 'AuthRouter',
      initial: true,
    ),
    AutoRoute(
      path: 'registration',
      name: 'RegistrationRouter',
      page: RegistrationScreen,
    ),
    AutoRoute(
      path: 'recipe',
      name: 'RecipeRouter',
      page: RecipeScreen,
    ),
    AutoRoute(
      page: NavigationScreen,
      name: 'NavigationRouter',
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: HomeScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
