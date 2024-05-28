import 'package:diet_app/app/resources/app_text_styles.dart';
import 'package:diet_app/domain/enums/meal_type.dart';
import 'package:diet_app/domain/models/position_model.dart';
import 'package:diet_app/gen/locale_keys.g.dart';
import 'package:diet_app/presentation/widgets/buttons/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddRecipeModal extends StatefulWidget {
  const AddRecipeModal({
    required this.countDays,
    this.position,
    this.onSavePressed,
    super.key,
  });

  final int countDays;
  final PositionModel? position;
  final Function(PositionModel)? onSavePressed;

  @override
  State<AddRecipeModal> createState() => _AddRecipeModalState();
}

class _AddRecipeModalState extends State<AddRecipeModal> {
  int day = 1;
  MealType meal = MealType.breakfast;

  @override
  void initState() {
    if (widget.position != null) {
      day = widget.position!.day + 1;
      meal = widget.position!.mealType;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeader(),
            const SizedBox(height: 12),
            _buildDays(),
            const SizedBox(height: 12),
            _buildMeals(),
            const SizedBox(height: 12),
            _buildSaveButton(),
          ],
        ),
      );

  Widget _buildHeader() => Text(
        LocaleKeys.addRecipe.tr(),
        style: AppTextStyles.subTitle,
      );

  Widget _buildDays() => DropdownButton<int>(
        value: day,
        padding: const EdgeInsets.all(4),
        underline: const SizedBox(),
        borderRadius: BorderRadius.circular(20),
        items: List.generate(widget.countDays, (index) => (index + 1))
            .map(
              (item) => DropdownMenuItem<int>(
                value: item,
                child: Text(item.toString()),
              ),
            )
            .toList(),
        onChanged: (selectedDay) {
          if (selectedDay != null) {
            day = selectedDay;
            setState(() {});
          }
        },
      );

  Widget _buildMeals() => DropdownButton<MealType>(
        value: meal,
        underline: const SizedBox(),
        padding: const EdgeInsets.all(4),
        borderRadius: BorderRadius.circular(20),
        items: MealType.values
            .map(
              (item) => DropdownMenuItem<MealType>(
                value: item,
                child: Text(item.title),
              ),
            )
            .toList(),
        onChanged: (selectedMeal) {
          if (selectedMeal != null) {
            meal = selectedMeal;
            setState(() {});
          }
        },
      );

  Widget _buildSaveButton() => AppButton(
        text: LocaleKeys.save.tr(),
        onPressed: () {
          widget.onSavePressed?.call(PositionModel(day: day - 1, mealType: meal));
        },
      );
}
