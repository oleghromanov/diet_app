import 'package:auto_route/auto_route.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/gen/assets.gen.dart';
import 'package:diet_app/presentation/screens/home/bloc/home_bloc.dart';
import 'package:diet_app/presentation/screens/search/bloc/search_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/navigation_bloc.dart';

class NavigationScreen extends StatefulWidget implements AutoRouteWrapper {
  const NavigationScreen({super.key});

  @override
  Widget wrappedRoute(context) {
    final homeBloc = HomeBloc();
    final searchBloc = SearchBloc();
    final navigationBloc = NavigationBloc(
      homeBloc: homeBloc,
      searchBloc: searchBloc,
    );
    Injector.initNavigationBloc(navigationBloc);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => homeBloc,
        ),
        BlocProvider(
          create: (context) => searchBloc,
        ),
        BlocProvider(
          create: (context) => navigationBloc,
          lazy: false,
        ),
      ],
      child: this,
    );
  }

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.background,
        routes: const [
          HomeRouter(),
          SearchRouter(),
        ],
        builder: (context, child, animation) {
          return child;
        },
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset(Assets.icons.home),
                activeIcon: SvgPicture.asset(Assets.icons.homeFill),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: SvgPicture.asset(
                  Assets.icons.receiptSearch,
                  height: 38,
                  width: 38,
                ),
                activeIcon: SvgPicture.asset(
                  Assets.icons.receiptSearchFill,
                  height: 38,
                  width: 38,
                ),
              ),
            ],
          );
        },
      );
}
