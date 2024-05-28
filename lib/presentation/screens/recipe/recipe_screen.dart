import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:diet_app/app/resources/app_colors.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/models/position_model.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:diet_app/gen/assets.gen.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/modals/add_recipe_modal.dart';
import 'package:diet_app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:diet_app/presentation/widgets/buttons/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bloc/recipe_bloc.dart';

class RecipeScreen extends StatefulWidget implements AutoRouteWrapper {
  const RecipeScreen({
    required this.recipe,
    this.isMyRecipe = true,
    super.key,
  });

  final Recipe recipe;
  final bool isMyRecipe;

  @override
  Widget wrappedRoute(context) => BlocProvider(
        create: (context) => RecipeBloc(recipe: recipe),
        child: this,
      );

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  final double collapsedBarHeight = 64.0;
  final double expandedBarHeight = 350.0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocBuilder<RecipeBloc, RecipeState>(
        buildWhen: (previous, current) => previous.isLoading != current.isLoading,
        builder: (context, state) => NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, scrolled) => [
            SliverAppBar(
              expandedHeight: expandedBarHeight,
              collapsedHeight: collapsedBarHeight,
              leadingWidth: 64,
              stretch: true,
              pinned: true,
              actions: [
                _buildActions(state.recipe),
              ],
              leading: _buildBackButton(),
              backgroundColor: AppColors.background,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                titlePadding: const EdgeInsets.symmetric(horizontal: 64),
                centerTitle: true,
                title: _buildTitle(state.recipe.label),
                background: _buildImage(state.recipe.image),
              ),
            ),
          ],
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            children: [
              _buildRecipeInfo(state.recipe),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 8),
              _buildSubTitle("${LocaleKeys.ingredients.tr()}:"),
              const SizedBox(height: 4),
              const Text(LocaleKeys.yield, style: AppTextStyles.boldText).plural(state.recipe.yield.toInt()),
              const SizedBox(height: 8),
              _buildIngredients(state.recipe.ingredientLines),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 8),
              _buildSubTitle("${LocaleKeys.instruction.tr()}:"),
              const SizedBox(height: 4),
              state.recipe.instructions != null
                  ? _buildInstructions(state.recipe.instructions!)
                  : _buildLink(state.recipe.url),
            ],
          ),
        ),
      );

  Widget _buildActions(Recipe recipe) {
    NavigationBloc navigationBloc = Injector.instance();
    UserModel user = navigationBloc.state.user!;
    PositionModel? position = user.getRecipePosition(recipe);
    return PopupMenuButton<String>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      padding: const EdgeInsets.only(left: 24, right: 24, top: 14, bottom: 14),
      onSelected: (action) {
        _showAddRecipeModal(
          countDays: 7,
          position: position,
          onSavePressed: (newPosition) {
            context.router.pop();
            if (position == newPosition) return;
            user = user.copyWith(mealPlan:user.changePositions(recipe: recipe, newPosition: newPosition, position: position));
            navigationBloc.add(NavigationEvent.userChanged(user));
          },
        );
      },
      itemBuilder: (BuildContext context) => [
        widget.isMyRecipe ? LocaleKeys.changePosition.tr() : LocaleKeys.addToPlan.tr()
      ].map((e) => _buildActionButton(e)).toList(),
      child: const Icon(
        Icons.more_vert_outlined,
        color: AppColors.onPrimary,
        opticalSize: 24,
      ),
    );
  }

  PopupMenuItem<String> _buildActionButton(String action) => PopupMenuItem<String>(
        value: action,
        child: Container(
          padding: const EdgeInsets.only(bottom: 10, top: 10),
          child: Row(
            children: [
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  action,
                  style: AppTextStyles.boldText,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildBackButton() => GestureDetector(
        onTap: () {
          context.router.pop();
        },
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.accent,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          margin: const EdgeInsets.only(
            left: 16,
            top: 8,
          ),
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            Assets.icons.arrowLeft,
            height: 24,
            width: 24,
          ),
        ),
      );

  Widget _buildTitle(String text) => Text(
        text,
        style: AppTextStyles.subTitle.copyWith(
          shadows: <Shadow>[
            const Shadow(
              offset: Offset(0, 1),
              blurRadius: 5.0,
              color: AppColors.background,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );

  Widget _buildSubTitle(String text) => Text(
        text,
        style: AppTextStyles.description,
      );

  Widget _buildIngredients(List<String> ingredients) => ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (context, index) => _buildText(" - ${ingredients[index]}"),
        separatorBuilder: (context, index) => const SizedBox(height: 4),
        itemCount: ingredients.length,
      );

  Widget _buildInstructions(List<String> instructions) => ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (context, index) => _buildText(instructions[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 4),
        itemCount: instructions.length,
      );

  Widget _buildLink(String url) => Column(
        children: [
          const Text(
            LocaleKeys.linkRecipeDescription,
            style: AppTextStyles.text,
          ).tr(),
          const SizedBox(height: 4),
          AppButton(
            text: LocaleKeys.goToWebsite.tr(),
            onPressed: () {
              launchUrl(Uri.parse(url));
            },
          )
        ],
      );

  Widget _buildText(String text) => Text(
        text,
        style: AppTextStyles.text,
      );

  Widget _buildImage(String image) => CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.cover,
      );

  Widget _buildRecipeInfo(Recipe recipe) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCalories(recipe),
          const SizedBox(height: 8),
          _buildNutrient(
            recipe.totalNutrients.procnt.label,
            (recipe.totalNutrients.procnt.quantity / recipe.yield).floor(),
          ),
          const SizedBox(height: 8),
          _buildNutrient(
            recipe.totalNutrients.fat.label,
            (recipe.totalNutrients.fat.quantity / recipe.yield).floor(),
          ),
          const SizedBox(height: 8),
          _buildNutrient(
            recipe.totalNutrients.chocdf.label,
            (recipe.totalNutrients.chocdf.quantity / recipe.yield).floor(),
          ),
        ],
      );

  Widget _buildCalories(Recipe recipe) => Text(
        "${(recipe.calories / recipe.yield).floor()} ${LocaleKeys.kcal.tr()}",
        style: AppTextStyles.description,
      );

  Widget _buildNutrient(String label, int quantity) => Row(
        children: [
          Text(
            label.toLowerCase().tr(),
            style: AppTextStyles.text,
          ),
          const Spacer(),
          Text(
            "$quantity ${LocaleKeys.g.tr()}",
            style: AppTextStyles.description,
          ),
        ],
      );

  void _showAddRecipeModal({
    required int countDays,
    PositionModel? position,
    Function(PositionModel)? onSavePressed,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: AddRecipeModal(
          countDays: countDays,
          position: position,
          onSavePressed: onSavePressed,
        ),
      ),
    );
  }
}
