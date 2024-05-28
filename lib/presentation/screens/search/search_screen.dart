import 'package:auto_route/auto_route.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/gen/assets.gen.dart';
import 'package:diet_app/presentation/widgets/buttons/app_button.dart';
import 'package:diet_app/presentation/widgets/inputs/app_input.dart';
import 'package:diet_app/presentation/widgets/items/recipe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bloc/search_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => Column(
          children: [
            _buildSearchInput(),
            Expanded(child: _buildRecipes()),
          ],
      );

  Widget _buildRecipes() => BlocBuilder<SearchBloc, SearchState>(
        buildWhen: (previous, current) => previous.recipes != current.recipes,
        builder: (context, state) => ListView.separated(
          padding: const EdgeInsets.only(bottom: 100, top: 25),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => RecipeItem(
            state.recipes[index],
            onPressed: () {
              context.router.push(
                RecipeRouter(
                  recipe: state.recipes[index],
                  isMyRecipe: state.user?.recipes.contains(state.recipes[index]) ?? false,
                ),
              );
            },
          ),
          itemCount: state.recipes.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      );

  Widget _buildSearchInput() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppInput(
          onChanged: (text) {
            context.read<SearchBloc>().add(SearchEvent.onSearchTextChanged(text));
          },
          onSubmitted: (text){
            context.read<SearchBloc>().add(const SearchEvent.onSearchClicked());
          },
          suffixIcon: AppButton(
            onPressed: () {
              context.read<SearchBloc>().add(const SearchEvent.onSearchClicked());
            },
            padding: EdgeInsets.zero,
            height: 50,
            width: 50,
            suffix: SvgPicture.asset(Assets.icons.search, height: 16, width: 16),
          ),
          suffixIconConstraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
        ),
      );
}
