import 'package:diet_app/domain/dto/recipe.dart';
import 'package:json_annotation/json_annotation.dart';

class RecipeUriResponse {
  const RecipeUriResponse({
    required this.from,
    required this.to,
    required this.count,
    required this.hits,
  });

  final int from;
  final int to;
  final int count;
  @JsonKey()
  final List<Recipe> hits;

  factory RecipeUriResponse.fromJson(Map<String, dynamic> json) =>
      RecipeUriResponse(
        from: json['from'] as int,
        to: json['to'] as int,
        count: json['count'] as int,
        hits: (json['hits'] as List<dynamic>)
            .map((e) => Recipe.fromJson(e['recipe'] as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson(RecipeUriResponse instance) =>
      <String, dynamic>{
        'from': instance.from,
        'to': instance.to,
        'count': instance.count,
        'hits': instance.hits,
      };
}