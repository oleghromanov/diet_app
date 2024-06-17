import 'package:cached_network_image/cached_network_image.dart';
import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem(
    this.recipe, {
    this.onPressed,
    this.onLikePressed,
    super.key,
  });

  final Recipe recipe;
  final VoidCallback? onPressed;
  final VoidCallback? onLikePressed;

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          onPressed?.call();
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: recipe.image,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(alignment: Alignment.topRight, child: _buildLike()),
                ],
              ),
              const SizedBox(width: 12),
              _buildRecipeTitle(),
            ],
          ),
        ),
      );

  Widget _buildRecipeTitle() => Text(
        recipe.label,
        style: AppTextStyles.boldText,
        maxLines: 2,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      );

  Widget _buildLike() => Padding(
    padding: const EdgeInsets.only(top: 3, right: 3),
    child: GestureDetector(
      onTap: () {
        onLikePressed?.call();
      },
      child: SvgPicture.asset(Assets.icons.heartFill, height: 32, width: 32,),
    ),
  );
}
