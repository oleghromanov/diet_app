import 'package:auto_route/auto_route.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/domain/enums/home_action.dart';
import 'package:diet_app/domain/models/day_plan_model.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/widgets/items/recipe_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget wrappedRoute(context) => BlocProvider(
        create: (context) => HomeBloc(),
        child: this,
      );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => SafeArea(
        bottom: false,
        child: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BlocListener<HomeBloc, HomeState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          AppAction? action = state.action;
          if (action is NavigationAction) {
            if (action.routeName == RegistrationRouter.name) {
              context.router.pushAndPopUntil(RegistrationRouter(user: action.data), predicate: (_) => false);
            } else if (action.routeName == AuthRouter.name) {
              context.router.pushAndPopUntil(const AuthRouter(), predicate: (_) => false);
            }
          }
        },
        child: Stack(
          children: [
            Positioned.fill(child: _buildPlans()),
            _buildAppBar(),
          ],
        ),
      );

  Widget _buildPlans() => BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous.user != current.user,
        builder: (context, state) => state.user != null
            ? ListView.separated(
                padding: const EdgeInsets.only(bottom: 100, top: 65),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => _buildPlan(state.user!.mealPlan[index], index),
                itemCount: state.user!.mealPlan.length,
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              )
            : const SizedBox(),
      );

  Widget _buildAppBar() => Container(
        color: AppColors.background,
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 9),
        // alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildTitle(LocaleKeys.mealPlan.tr()),
            _buildActions(),
          ],
        ),
      );

  Widget _buildActions() => PopupMenuButton<HomeAction>(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        padding: const EdgeInsets.only(left: 24, right: 24, top: 14, bottom: 14),
        onSelected: (action) {
          context.read<HomeBloc>().add(HomeEvent.onActionPressed(action));
        },
        itemBuilder: (BuildContext context) => HomeAction.values.map((e) => _buildActionButton(e)).toList(),
        child: const Icon(
          Icons.more_vert_outlined,
          color: AppColors.onPrimary,
          opticalSize: 24,
        ),
      );

  PopupMenuItem<HomeAction> _buildActionButton(HomeAction action) => PopupMenuItem<HomeAction>(
        value: action,
        child: Container(
          padding: const EdgeInsets.only(bottom: 10, top: 10),
          child: Row(
            children: [
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  action.title,
                  style: AppTextStyles.boldText,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildPlan(DayPlanModel plan, int index) => Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTitle("${LocaleKeys.day.tr()} ${index + 1}"),
            const SizedBox(height: 12),
            _buildSubTitle(LocaleKeys.breakfast.tr()),
            const SizedBox(height: 8),
            RecipeItem(
              plan.breakfast,
              onPressed: () {
                context.router.push(RecipeRouter(recipe: plan.breakfast));
              },
            ),
            const SizedBox(height: 24),
            _buildSubTitle(
              LocaleKeys.launch.tr(),
            ),
            const SizedBox(height: 12),
            RecipeItem(
              plan.lunch,
              onPressed: () {
                context.router.push(RecipeRouter(recipe: plan.lunch));
              },
            ),
            const SizedBox(height: 24),
            _buildSubTitle(LocaleKeys.dinner.tr()),
            const SizedBox(height: 12),
            RecipeItem(
              plan.dinner,
              onPressed: () {
                context.router.push(RecipeRouter(recipe: plan.dinner));
              },
            ),
          ],
        ),
      );

  Widget _buildTitle(String text) => Text(
        text,
        style: AppTextStyles.title,
      );

  Widget _buildSubTitle(String text) => Text(
        text,
        style: AppTextStyles.subTitle,
      );
}
