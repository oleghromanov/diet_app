
import 'package:auto_route/auto_route.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/app/resources/app_themes.dart';
import 'package:diet_app/di/injector.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> with WidgetsBindingObserver {
  final AppRouter _appRouter = Injector.instance();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerDelegate: AutoRouterDelegate(_appRouter),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: AppThemes.appTheme,
    );
  }
}