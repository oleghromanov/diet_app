// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayPlanModel _$DayPlanModelFromJson(Map<String, dynamic> json) => DayPlanModel(
      breakfast: Recipe.fromJson(json['breakfast'] as Map<String, dynamic>),
      lunch: Recipe.fromJson(json['lunch'] as Map<String, dynamic>),
      dinner: Recipe.fromJson(json['dinner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayPlanModelToJson(DayPlanModel instance) =>
    <String, dynamic>{
      'breakfast': instance.breakfast.toJson(),
      'lunch': instance.lunch.toJson(),
      'dinner': instance.dinner.toJson(),
    };
