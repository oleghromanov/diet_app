import 'package:diet_app/domain/dto/recipe.dart';
import 'package:json_annotation/json_annotation.dart';
part 'day_plan_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DayPlanModel {
  DayPlanModel({
    required this.breakfast,
    required this.lunch,
    required this.dinner,
  });

  final Recipe breakfast;
  final Recipe lunch;
  final Recipe dinner;

  factory DayPlanModel.fromJson(Map<String, dynamic> json) => _$DayPlanModelFromJson(json);

  Map<String, dynamic> toJson() => _$DayPlanModelToJson(this);
}
