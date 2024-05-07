import 'package:diet_app/domain/dto/total_nutrients.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recipe.g.dart';

@JsonSerializable(explicitToJson: true)
class Recipe {
  Recipe({
    required this.uri,
    required this.label,
    required this.image,
    // this.images,
    this.source,
    required this.url,
    this.shareAs,
    required this.yield,
    this.dietLabels,
    this.healthLabels,
    this.cautions,
    required this.ingredientLines,
    this.instructions,
    // this.ingredients,
    required this.calories,
    // this.totalCO2Emissions,
    // this.co2EmissionsClass,
    this.totalWeight,
    this.totalTime,
    this.cuisineType,
    this.mealType,
    this.dishType,
    required this.totalNutrients,
    // this.totalDaily,
    // this.digest,
  });

  String uri;
  String label;
  String image;
  // Images? images;
  String? source;
  String url;
  String? shareAs;
  double yield;
  List<String>? dietLabels;
  List<String>? healthLabels;
  List<String>? cautions;
  List<String> ingredientLines;
  List<String>? instructions;
  // List<Ingredients>? ingredients;
  double calories;
  // double? totalCO2Emissions;
  // String? co2EmissionsClass;
  double? totalWeight;
  double? totalTime;
  List<String>? cuisineType;
  List<String>? mealType;
  List<String>? dishType;
  TotalNutrients totalNutrients;
  // TotalDaily? totalDaily;
  // List<Digest>? digest;


  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);

  // Recipe copyWith({
  //   String? uri,
  //   String? label,
  //   String? image,
  //   Images? images,
  //   String? source,
  //   String? url,
  //   String? shareAs,
  //   int? yield,
  //   List<String>? dietLabels,
  //   List<String>? healthLabels,
  //   List<String>? cautions,
  //   List<String>? ingredientLines,
  //   List<Ingredients>? ingredients,
  //   double? calories,
  //   double? totalCO2Emissions,
  //   String? co2EmissionsClass,
  //   double? totalWeight,
  //   int? totalTime,
  //   List<String>? cuisineType,
  //   List<String>? mealType,
  //   List<String>? dishType,
  //   TotalNutrients? totalNutrients,
  //   TotalDaily? totalDaily,
  //   List<Digest>? digest,
  // }) {
  //   return Recipe(
  //     uri: uri ?? this.uri,
  //     label: label ?? this.label,
  //     image: image ?? this.image,
  //     images: images ?? this.images,
  //     source: source ?? this.source,
  //     url: url ?? this.url,
  //     shareAs: shareAs ?? this.shareAs,
  //     yield: yield ?? this.yield,
  //     dietLabels: dietLabels ?? this.dietLabels,
  //     healthLabels: healthLabels ?? this.healthLabels,
  //     cautions: cautions ?? this.cautions,
  //     ingredientLines: ingredientLines ?? this.ingredientLines,
  //     ingredients: ingredients ?? this.ingredients,
  //     calories: calories ?? this.calories,
  //     totalCO2Emissions: totalCO2Emissions ?? this.totalCO2Emissions,
  //     co2EmissionsClass: co2EmissionsClass ?? this.co2EmissionsClass,
  //     totalWeight: totalWeight ?? this.totalWeight,
  //     totalTime: totalTime ?? this.totalTime,
  //     cuisineType: cuisineType ?? this.cuisineType,
  //     mealType: mealType ?? this.mealType,
  //     dishType: dishType ?? this.dishType,
  //     totalNutrients: totalNutrients ?? this.totalNutrients,
  //     totalDaily: totalDaily ?? this.totalDaily,
  //     digest: digest ?? this.digest,
  //   );
  // }
}
