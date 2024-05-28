import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/enums/meal_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'day_plan_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DayPlanModel {
  const DayPlanModel({
    required this.breakfast,
    required this.lunch,
    required this.dinner,
  });

  final Recipe breakfast;
  final Recipe lunch;
  final Recipe dinner;

  MealType? getMealType(Recipe recipe) {
    if (recipe == breakfast) {
      return MealType.breakfast;
    } else if (recipe == lunch) {
      return MealType.lunch;
    } else if (recipe == dinner) {
      return MealType.dinner;
    }
    return null;
  }

  Recipe getRecipe(MealType type) {
    switch (type) {
      case MealType.breakfast:
        return breakfast;
      case MealType.lunch:
        return lunch;
      case MealType.dinner:
        return lunch;
    }
  }

  factory DayPlanModel.fromJson(Map<String, dynamic> json) => _$DayPlanModelFromJson(json);

  List<Recipe> toList() => [breakfast, lunch, dinner];

  factory DayPlanModel.fromList(List<Recipe> recipes) => DayPlanModel(
        breakfast: recipes[0],
        lunch: recipes[1],
        dinner: recipes[2],
      );

  DayPlanModel copyWith(MealType type, Recipe recipe) {
    return DayPlanModel(
      breakfast: type == MealType.breakfast ? recipe : breakfast,
      lunch: type == MealType.lunch ? recipe : lunch,
      dinner: type == MealType.dinner ? recipe : dinner,
    );
  }

  Map<String, dynamic> toJson() => _$DayPlanModelToJson(this);
}
