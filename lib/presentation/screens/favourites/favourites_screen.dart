import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:diet_app/presentation/widgets/items/favorite_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/favourites_bloc.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) => SafeArea(
        bottom: false,
        child: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BlocBuilder<FavouritesBloc, FavouritesState>(
        buildWhen: (previous, current) => previous.user != current.user,
        builder: (context, state) => Stack(
          children: [
            if (state.user != null) Positioned.fill(child: _buildFavourites()),
            _buildAppBar(),
          ],
        ),
      );

  Widget _buildAppBar() => Container(
        color: AppColors.background,
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 9),
        alignment: Alignment.center,
        child: Text(
          LocaleKeys.favourites.tr(),
          style: AppTextStyles.title,
        ),
      );

  Widget _buildFavourites() => BlocBuilder<FavouritesBloc, FavouritesState>(
        buildWhen: (previous, current) => previous.favourites != current.favourites,
        builder: (context, state) => GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 220,
            mainAxisSpacing: 1,
          ),
          padding: const EdgeInsets.only(bottom: 100, top: 70),
          itemBuilder: (BuildContext context, int index) => FavoriteItem(
            state.favourites[index],
            onLikePressed: () {
              context.read<NavigationBloc>().add(NavigationEvent.onLikeClicked(state.favourites[index]));
            },
            onPressed: () {
              context.router.push(
                RecipeRouter(
                  recipe: state.favourites[index],
                  isMyRecipe: state.user?.recipes.contains(state.favourites[index]) ?? false,
                  inFavorite: true,
                ),
              );
            },
          ),
          itemCount: state.favourites.length,
        ),
      );
}
