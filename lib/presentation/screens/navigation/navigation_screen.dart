import 'package:auto_route/auto_route.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/gen/assets.gen.dart';
import 'package:diet_app/presentation/screens/home/bloc/home_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/navigation_bloc.dart';

class NavigationScreen extends StatefulWidget implements AutoRouteWrapper {
  const NavigationScreen({super.key});


  @override
  Widget wrappedRoute(context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NavigationBloc(),
          ),
          BlocProvider(
            create: (context) => HomeBloc(),
          ),
        ],
        child: this,
      );

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
          HomeRouter(),
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
                icon: SvgPicture.asset(Assets.icons.home),
                activeIcon: SvgPicture.asset(Assets.icons.homeFill),
              ),
            ],
          );
        },
      );
}
