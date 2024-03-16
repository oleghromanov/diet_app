import 'package:auto_route/auto_route.dart';
import 'package:diet_app/presentation/screens/auth/auth_screen.dart';
import 'package:diet_app/presentation/screens/registration/registration_screen.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthScreen, initial: true),
    AutoRoute(
      path: 'registration',
      name: 'RegistrationRouter',
      page: RegistrationScreen,
    ),
  ],
)
class $AppRouter {}
