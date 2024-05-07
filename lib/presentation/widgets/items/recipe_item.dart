import 'package:cached_network_image/cached_network_image.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/domain/dto/nutrient.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem(
    this.recipe, {
    this.onPressed,
    super.key,
  });

  final Recipe recipe;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          onPressed?.call();
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: recipe.image,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 20),
              _buildRecipeInfo(),
            ],
          ),
        ),
      );

  Widget _buildRecipeInfo() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTitle(),
          const SizedBox(height: 8),
          _buildCalories(),
          const SizedBox(height: 8),
          _buildNutrient(recipe.totalNutrients.procnt),
          const SizedBox(height: 8),
          _buildNutrient(recipe.totalNutrients.fat),
          const SizedBox(height: 8),
          _buildNutrient(recipe.totalNutrients.chocdf),
        ],
      );

  Widget _buildTitle() => Text(
        recipe.label,
        style: AppTextStyles.subTitle,
        maxLines: 3,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      );

  Widget _buildCalories() => Text(
        "${(recipe.calories / recipe.yield).floor()} ${LocaleKeys.kcal.tr()}",
        style: AppTextStyles.description,
      );

  Widget _buildNutrient(Nutrient nutrient) => Row(
        children: [
          Text(
            nutrient.label.toLowerCase().tr(),
            style: AppTextStyles.text,
          ),
          const Spacer(),
          Text(
            "${(nutrient.quantity / recipe.yield).floor()} ${LocaleKeys.g.tr()}",
            style: AppTextStyles.description,
          ),
        ],
      );
}
