// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      uri: json['uri'] as String,
      label: json['label'] as String,
      image: json['image'] as String,
      source: json['source'] as String?,
      url: json['url'] as String,
      shareAs: json['shareAs'] as String?,
      yield: (json['yield'] as num).toDouble(),
      dietLabels: (json['dietLabels'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      healthLabels: (json['healthLabels'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cautions: (json['cautions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ingredientLines: (json['ingredientLines'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      instructions: (json['instructions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      calories: (json['calories'] as num).toDouble(),
      totalWeight: (json['totalWeight'] as num?)?.toDouble(),
      totalTime: (json['totalTime'] as num?)?.toDouble(),
      cuisineType: (json['cuisineType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mealType: (json['mealType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dishType: (json['dishType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      totalNutrients: TotalNutrients.fromJson(
          json['totalNutrients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'uri': instance.uri,
      'label': instance.label,
      'image': instance.image,
      'source': instance.source,
      'url': instance.url,
      'shareAs': instance.shareAs,
      'yield': instance.yield,
      'dietLabels': instance.dietLabels,
      'healthLabels': instance.healthLabels,
      'cautions': instance.cautions,
      'ingredientLines': instance.ingredientLines,
      'instructions': instance.instructions,
      'calories': instance.calories,
      'totalWeight': instance.totalWeight,
      'totalTime': instance.totalTime,
      'cuisineType': instance.cuisineType,
      'mealType': instance.mealType,
      'dishType': instance.dishType,
      'totalNutrients': instance.totalNutrients.toJson(),
    };
