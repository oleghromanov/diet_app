import 'package:auto_route/auto_route.dart';
import 'package:diet_app/presentation/screens/auth/auth_screen.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthScreen, initial: true),
  ],
)
class $AppRouter {}
