import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/enums/allergy_type.dart';
import 'package:diet_app/domain/enums/diet_type.dart';
import 'package:diet_app/domain/enums/meal_type.dart';
import 'package:diet_app/domain/models/day_plan_model.dart';
import 'package:diet_app/domain/models/position_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  const UserModel({
    required this.name,
    required this.email,
    required this.mealPlan,
    required this.allergies,
    required this.diets,
    required this.countDays,
  });

  final String name;
  final String email;
  final List<DayPlanModel> mealPlan;
  final List<AllergyType> allergies;
  final List<DietType> diets;
  final int countDays;

  List<Recipe> get recipes {
    List<Recipe> recipes = [];
    for (DayPlanModel day in mealPlan) {
      recipes.addAll(day.toList());
    }
    return recipes;
  }

  PositionModel? getRecipePosition(Recipe recipe) {
    for (int i = 0; i < mealPlan.length; i++) {
      DayPlanModel day = mealPlan[i];
      MealType? mealType = day.getMealType(recipe);
      if (mealType != null) {
        return PositionModel(day: i, mealType: mealType);
      }
    }
    return null;
  }

  List<DayPlanModel> changePositions({
    required Recipe recipe,
    required PositionModel newPosition,
    PositionModel? position,
  }) {
    List<DayPlanModel> plan = mealPlan;

    if (position != null) {
      Recipe oldRecipe = plan[newPosition.day].getRecipe(newPosition.mealType);
      plan[position.day] = plan[position.day].copyWith(position.mealType, oldRecipe);
    }
    plan[newPosition.day] = plan[newPosition.day].copyWith(newPosition.mealType, recipe);
    return plan;
  }

  UserModel copyWith({
    String? name,
    String? email,
    List<DayPlanModel>? mealPlan,
    List<AllergyType>? allergies,
    List<DietType>? diets,
    int? countDays,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      mealPlan: mealPlan ?? this.mealPlan,
      allergies: allergies ?? this.allergies,
      diets: diets ?? this.diets,
      countDays: countDays ?? this.countDays,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
