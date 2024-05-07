import 'package:diet_app/domain/enums/allergy_type.dart';
import 'package:diet_app/domain/enums/diet_type.dart';
import 'package:diet_app/domain/models/day_plan_model.dart';
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

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
