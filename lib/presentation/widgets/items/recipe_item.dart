import 'package:cached_network_image/cached_network_image.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/domain/dto/nutrient.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/gen/assets.gen.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem(
    this.recipe, {
    this.onPressed,
    this.onLikePressed,
    this.inFavorite = false,
    super.key,
  });

  final Recipe recipe;
  final VoidCallback? onPressed;
  final VoidCallback? onLikePressed;
  final bool inFavorite;

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          onPressed?.call();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: recipe.image,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                 if (onLikePressed != null) Align(alignment:Alignment.topRight, child: _buildLike()),
                ],
              ),
              const SizedBox(width: 20),
              _buildRecipeInfo(),
            ],
          ),
        ),
      );

  Widget _buildRecipeInfo() => Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Column(
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
        ),
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

  Widget _buildLike() => GestureDetector(
        onTap: () {
          onLikePressed?.call();
        },
        child: SvgPicture.asset(inFavorite ? Assets.icons.heartFill : Assets.icons.heart, height: 48, width: 48,),
      );
}
